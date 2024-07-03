#NoEnv
#Persistent
#SingleInstance Force
OnClipboardChange("ClipChanged")
Return

ClipChanged(type) {
    if (type == 1) {
        FileDelete,  % Format("C:\Users\melti\Documents\AutoHotKey\clipShare\clipShare.txt")
        FileAppend, % Format(Clipboard), % Format("C:\Users\melti\Documents\AutoHotKey\clipShare\clipShare.txt")
        run, pythonw.exe C:\Users\melti\Documents\AutoHotKey\clipShare\encodeText.py
    }
    if (type == 2) {
        FileDelete,  % Format("C:\Users\melti\Documents\AutoHotKey\clipShare\clipShare.txt")
        run, pythonw.exe C:\Users\melti\Documents\AutoHotKey\clipShare\saveImage.py
    }
}