#NoEnv
#Persistent
OnClipboardChange("ClipChanged")
Return

ClipChanged(type) {
    FormatTime, date, A_Now, yyyy'-'MM'-'dd

    if (type == 1)
        FileDelete,  % Format("C:\Users\melti\Documents\clipShare.txt")
        FileAppend, % Format(Clipboard), % Format("C:\Users\melti\Documents\clipShare.txt")
}