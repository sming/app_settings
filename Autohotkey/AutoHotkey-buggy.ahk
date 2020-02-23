zf;;l
SetTitleMatchMode, 2
; GroupAdd, GroupName [, WinTitle, WinText, Label, ExcludeTitle, ExcludeText]
GroupAdd, WinExplorer, ahk_class CabinetWClass	; Windows explorer plain
GroupAdd, WinExplorer, ahk_class ExploreWClass	; Windows explorer with folder sidebar
GroupAdd, Cygwin, ahk_class mintty
GroupAdd, CMD, ahk_class ConsoleWindowClass

GroupAdd, Browser, Google Chrome
GroupAdd, cygwin, Cygwin Bash Shell
GroupAdd, Evernote, peterkingswell - Evernote
GroupAdd, Excel, Microsoft Excel -
GroupAdd, FileZilla, FileZilla
GroupAdd, GCal, Google Calendar
GroupAdd, GCal, is starting at
GroupAdd, GMail, - peterkingswell@gmail.com - Gmail
GroupAdd, iTunes, iTunes
GroupAdd, MailClient, - Thunderbird
GroupAdd, MailClient, - Mozilla Thunderbird
GroupAdd, MailClient, Compose: 
GroupAdd, MailClient, Write: 
GroupAdd, Picasa, Picasa 3
GroupAdd, putty, - PuTTY
GroupAdd, RDP, Remote Desktop
GroupAdd, IONGMail, - ION Trading Mail
GroupAdd, QC, Mercury Quality Center 9.0
GroupAdd, Word, - Microsoft Word
GroupAdd, Eclipse,- SpringSource Tool Suite
GroupAdd, Eclipse,- Eclipse
GroupAdd, Foxit, - Foxit Reader
GroupAdd, MySQL, MySQL Workbench
GroupAdd, Tomcat, Tomcat

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;INCLUDES;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#Include WindowPad.ahk 
#Include ContextSensitiveHelp.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;FUNCTIONS;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;KEY BINDINGS;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
CapsLock::Backspace
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Browser;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;HOT STRINGS;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
::658x::658 Bergen St, Apt 4F, Brooklyn, NY, 11238
::pkx::Peter Kingswell
::pskx::peterkingswell@gmail.com
::px::peterkingswell@gmail.com
::homex::
	SendInput, 658 Bergen St, 4F{Enter}
	SendInput, Brooklyn{Enter}
	SendInput, NY{Enter}
	SendInput, 11238{Enter}
Exit

::mx::Many thanks,{Enter}Pete
::rx::Regards, Peter
::lx::Love, Pete
::bx::Best, Peter
::cx::Cheers, Pete
::yuo::you
::kg::kategottlieb@yahoo.com
::kgg::jkgottlieb@gmail.com
::acx::applicationContext.xml
::===::======================================
::---::--------------------------------------
::nox::
	SendInput, Hi, I'm currently happily employed, please remove me from your mailing list.{Enter}
	SendInput, Thanks, Peter
Exit
::5pike::	
SendInput,==============={Enter}
SendInput,SCENARIO:     {Enter}
SendInput,SPIKE:        {Enter}
SendInput,COMPULSION:   {Enter}
SendInput,CONSEQUENCE:  {Enter}
SendInput,CHALLENGE:    {Enter}
Exit

;;;;;;;;;;;;;;;;;;;;;;;;;DIRECT KEY BINDINGS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
::cz::
	SendInput, Cheers, Pete{Enter}
Exit

::tz::
	SendInput, Thanks, Pete{Enter}
Exit

::tx::
	SendInput, Thanks, Pete{Enter}
Exit
::bx::
	SendInput, Best, Pete{Enter}
Exit

::Xmas::Christmas
::xmas::Christmas

::sigx::
SendInput, ---{Enter}
SendInput, Cell | 646 675 6541{Enter}
SendInput, Skype | peterkingswell{Enter}
SendInput, linkedin.com/in/peterkingswell{Enter}
Exit

LWin & g::
	clipboard = 
	Send ^c
	; ClipWait  ; Wait for the clipboard to contain text.
	Sleep, 10
	; clipboard := uriEncode(clipboard)
	Run, "http://www.google.com/search?&sourceid=chrome&ie=UTF-8&q=%clipboard%&qscrl=1"
Exit

+!k::clipboard = 
	Send ^c
	ClipWait  ; Wait for the clipboard to contain text.
	Run, "http://en.wikipedia.org/wiki/Special:Search?search=%clipboard%&go=Go"
Exit

^!r::Reload  ; Assign Ctrl-Alt-R as a hotkey to reload the script.

+!n::
	SetTitleMatchMode, 2
	IfWinExist, ahk_class Notepad++
		WinActivate
	else
		Run, C:\Program Files (x86)\Notepad++\notepad++.exe	
Exit

;;;;;;;;;;;;;;;;;;;;;;;;;;GROUPS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
+!e::GroupActivate, Eclipse, R
+!o::GroupActivate, WinExplorer, R
+!f::GroupActivate, Browser, R
+!h::GroupActivate, MailClient, R
+!w::GroupActivate, Word, R
+!p::GroupActivate, Picasa, R
;;+!z::GroupActivate, FileZilla, R
+!u::GroupActivate, putty, R
+!y::GroupActivate, cygwin, R
+!i::GroupActivate, Foxit, R
+!c::GroupActivate, Cygwin, R
+!m::GroupActivate, CMD, R
+!q::GroupActivate, MySQL, R
+!t::GroupActivate, Tomcat, R

;^!1::Send {Home}
;^!2::Send {End}
;^!3::Send {PgUp}
;^!4::Send {PgDn}
;^!5::Send ^{Home}
;^!6::Send ^{End}
;^!q::SendInput, !{F4}

^!Enter::
	SetTitleMatchMode, 1
	IfWinExist Task Manager
		WinActivate
	Else
		Run, TaskMgr.exe
Exit