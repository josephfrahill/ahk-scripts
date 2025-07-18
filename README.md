🔍 Windows Magnifier Hotkey Script (AutoHotkey)

This AutoHotkey script provides convenient keyboard shortcuts using AltGr to control the Windows Magnifier. It allows you to quickly zoom in, zoom out, and close the magnifier using consistent shortcuts.
💡 Features

    AltGr + = → Launch Magnifier (if not already running), then Zoom In when re-triggered

    AltGr + - → Zoom Out

    AltGr + Backspace → Close Magnifier and exit fullscreen

    ⚠️ Note:
    Windows remembers the last zoom level used.
    For example, if you exit the Magnifier at 200%, it will reopen at 200% the next time you launch it.

🛠 Requirements

    AutoHotkey installed

    Windows built-in Magnifier (magnify.exe)

🧠 How It Works

    Uses Send, #=, #-, and #{Escape} to simulate native Windows key shortcuts.

    Ensures Magnifier is only launched if not already running.

    Closes Magnifier cleanly and exits fullscreen mode.