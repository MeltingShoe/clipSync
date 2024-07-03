#NoEnv
#Persistent
OnClipboardChange("ClipChanged")
Return

ClipChanged(type) {
    if (type == 1)
        FileDelete,  % Format("C:\Users\melti\Documents\clipShare.txt")
        FileAppend, % Format(Clipboard), % Format("C:\Users\melti\Documents\clipShare.txt")
}
