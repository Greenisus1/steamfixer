# STEAMFIXER [BETA]

Standalone split of the original app. Original repository untouched. Version1.0.0 is the split packaging version.

## Dual-mode operation

Run `bash app-store.sh run`. With an active desktop session, the launcher uses the graphical path. Without one it offers a terminal management menu. A desktop installed on disk is not enough: DISPLAY or WAYLAND_DISPLAY must identify an active session. Terminal mode does not emulate the GUI application.

Terminal menu supports status/disk checks and access to the original dialog utility, with confirmation before it can install dialog or change Proton config. Active desktop and Steam installed: launch Steam normally. Terminal management isn't terminal game rendering. Steam/game binaries and ARM compatibility are not validated.

Original STEAMFIXER includes a fixed game ID for Motel Manager Simulator; no purchase is performed by this launcher. Games may need their own license. GUI launches require Steam plus an active display, now checked before invoking the game. The original Proton config rewrite is experimental and may fail; back up config first.

Full-system backup scripts, and the explicitly not-for-use broken upgrader, aren't bundled in this app. Historical changelog claims describe earlier experiments, not validated current features.

Linux packaging and mocked headless menu checks pass; Raspberry Pi hardware, graphical gaming and non-Linux systems untested. No game, package installation or Proton modification executed during tests.

## Fullscreen Store launch

Version 1.0.1 adds a full-terminal interface when launched through the Store. Python 3 with curses and an interactive terminal are required. The original source remains available directly. Arrow keys select, Enter opens, and Q/Esc returns. Original commands temporarily take over the terminal for their prompts and output, then return to the full-terminal menu. Nested launcher selections now use fullscreen lists. Freeform/password/confirmation prompts still retain terminal ownership. Passwords, sudo, confirmations, package changes and original limitations retain their old behavior. No administrative/package/transfer action ran during validation. Linux terminal checks passed; physical Raspberry Pi and non-Linux systems are untested.
