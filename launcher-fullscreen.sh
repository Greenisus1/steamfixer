#!/bin/bash
UI_ROOT=$(cd -- "$(dirname -- "$0")" && pwd)
cd -- "$(dirname -- "$0")" || exit 1
has_desktop() { [ -n "${DISPLAY:-}${WAYLAND_DISPLAY:-}" ]; }
status() {
 echo "STEAMFIXER [BETA]"
 if command -v steam >/dev/null; then echo "steam found."; else echo "steam missing."; fi
 df -h "$HOME"
 if has_desktop; then echo "Active graphical session detected."; else echo "Terminal management mode. Graphical Steam games need a display."; fi
}
if [ "${1:-}" = status ]; then status; exit; fi
if [ "${1:-}" != terminal ] && has_desktop && command -v steam >/dev/null; then steam; exit; fi
while :; do
 choice=$(python3 "$UI_ROOT/menu_bridge.py" steamfixer 4 $'1\tStatus/disk space' $'2\tOriginal terminal utility (may install dialog)' $'3\tLaunch Steam on desktop' $'4\tQuit')
 case "$choice" in
  1) status ;;
  2) read -r -p "Run original utility? It can change Proton config/install dialog. [y/N] " ok; case "$ok" in y|Y) bash steam-fullscreen.sh ;; esac ;;
  3) if has_desktop && command -v steam >/dev/null; then steam; else echo "Steam launch needs steam installed and an active graphical session."; fi ;;
  4|q|Q) exit 0 ;;
  *) echo "Choose 1-4." ;;
 esac
done
