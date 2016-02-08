#Persistent

; Config
border_thickness = 4
border_color = FF0000

SetTimer, DrawRect, 50

DrawRect:
WinGetPos, x, y, w, h, A
Gui, +Lastfound +AlwaysOnTop +Toolwindow
iw:= w - 19
ih:= h - 8
w:= w - 14
h:= h - 4
x:= x+7
y:= y
#x:= x - border_thickness
#y:= y - border_thickness
Gui, Color, FF0000
Gui, -Caption
WinSet, Region, 0-0 %w%-0 %w%-%h% 0-%h% 0-0 %border_thickness%-%border_thickness% %iw%-%border_thickness% %iw%-%ih% %border_thickness%-%ih% %border_thickness%-%border_thickness%
Gui, Show, w%w% h%h% x%x% y%y% NoActivate, Table awaiting Action
return