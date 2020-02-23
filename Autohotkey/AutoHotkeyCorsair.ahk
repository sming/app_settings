;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AUTO EXECUTE SECTION ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; SetTitleMatchMode
; 1: A window's title must start with the specified WinTitle to be a match.
; 2: A window's title can contain WinTitle anywhere inside it to be a match.
; 3: A window's title must exactly match WinTitle to be a match.

SetTitleMatchMode, 2


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  SYMBOLS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Symbol	Key	
; !			Alt}	
; +			{Shift}	
; ^			{Ctrl}	
; #			{LWin}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; GROUP LIST ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; GroupAdd, GroupName [, WinTitle, WinText, Label, ExcludeTitle, ExcludeText]
GroupAdd, WinExplorer, ahk_class CabinetWClass	; Windows explorer plain
GroupAdd, WinExplorer, ahk_class ExploreWClass	; Windows explorer with folder sidebar
GroupAdd, Cygwin, ahk_class mintty
GroupAdd, CMD, ahk_class ConsoleWindowClass
GroupAdd, Music, Google Play Music
GroupAdd, Speakers, Volume Mixer - Speakers (Realtek High Definition Audio)
GroupAdd, Chrome, - Google Chrome,,,TweetDeck - Google Chrome
GroupAdd, Browser, - Opera,,,Tabli - Opera
GroupAdd, Browser,ahk_exe vivaldi.exe
;; GroupAdd, Browser,,,,WatchESPN - Google Chrome
;; GroupAdd, Browser, ahk_class Chrome_WidgetWin_1	;; weirdly activates MS Code
GroupAdd, cygwin, Cygwin Bash Shell
GroupAdd, DeveloperTools, Developer Tools -
GroupAdd, DevTools, Developer Tools
GroupAdd, Evernote, peterkingswell - Evernote
GroupAdd, Excel, Excel
GroupAdd, FileZilla, FileZilla
GroupAdd, GCal, Calendar
GroupAdd, GCal, Google Calendar
GroupAdd, GCal, is starting at
GroupAdd, GCal, Sunrise Calendar
GroupAdd, GCal, - Calendar
GroupAdd, Hangouts, Ninja chat
GroupAdd, IE, - Windows Internet Explorer
GroupAdd, iTunes, iTunes
GroupAdd, Keep, Google Keep
GroupAdd, MailClient, - Thunderbird
GroupAdd, MailClient, - Mozilla Thunderbird
GroupAdd, MailClient, Compose:
GroupAdd, MailClient, Write:
GroupAdd, MailClient, Mail
GroupAdd, MailClient, - Outlook
GroupAdd, OneNote, - OneNote
GroupAdd, OtherEditor, - Sublime Text (UNREGISTERED)
GroupAdd, OtherEditor, Atom
GroupAdd, OtherEditor, - Notepad++
GroupAdd, Picasa, Picasa 3
GroupAdd, RDP, Remote Desktop
GroupAdd, Word, - Word
GroupAdd, Foxit, - Foxit Reader
GroupAdd, Stickies, Sticky Notes
GroupAdd, SQL, Toad for MySQL
GroupAdd, SQL, Microsoft SQL Server Management
GroupAdd, Tabli,Tabli - Opera,,,
GroupAdd, Tomcat, Tomcat
GroupAdd, Twitter, TweetDeck 
GroupAdd, Teams, | Microsoft Teams
GroupAdd, Twitter, Twitter Timeline 
GroupAdd, Twitter, TwitDuck 
GroupAdd, VisualStudio, Microsoft Visual Studio 	;; VizStu
GroupAdd, VisualStudio, VizStu
GroupAdd, VisualStudio, - Visual Studio Code
GroupAdd, VisualStudioAndNotepad, Microsoft Visual Studio
GroupAdd, VisualStudioAndNotepad, Notepad++
GroupAdd, WMP, Windows Media Player
GroupAdd, Timer, ahk_exe chrome.exe

GroupAdd, FindWindow,- search-ms:query=
GroupAdd, FindWindow,- search-ms:displayname=

;;;;;;;;;;;;;;;;;;;;;;;;;;UNCONDITIONAL GROUP BINDINGS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Use ^! since it works via TV too
^!3::GroupActivate, DeveloperTools, R
^!a::GroupActivate, Teams, R
#IfWinNotActive, ahk_exe devenv.exe
	^!b::GroupActivate, Chrome, R
#IfWinNotActive
^!c::GroupActivate, Cygwin, R
^!y::GroupActivate, cygwin, R
;;^!d::GroupActivate, RDP, R
^!d::GroupActivate, Word, R
;;^!e::GroupActivate, Eclipse, R
^!f::GroupActivate, Browser, R
^!h::GroupActivate, Hangouts, R
^+i::GroupActivate, Stickies, R
^!k::GroupActivate, Keep, R
^!m::GroupActivate, MailClient, R
;^!n::GroupActivate, OtherEditor, R
;^!o::GroupActivate, MailClient, R
#IfWinNotActive, ahk_exe devenv.exe
	^!o::GroupActivate, OneNote, R
#IfWinNotActive
^+o::GroupActivate, OneNote, R
;;^!o::GroupActivate, Word, R
;; ^!p::GroupActivate, Timer, R
^!q::GroupActivate, SQL, R
;;^!a::GroupActivate, GCal, R
;; ^!p::GroupActivate, WMP, R
;; ^!d::GroupActivate, DevTools, R
;; ^!t::GroupActivate, Twitter, R
^!t::GroupActivate, Tabli, R
; RControl & t::GroupActivate, Tabli, R
;RControl & t::MsgBox IT WORKS!
; ^!r::GroupActivate, Robomongo, R
;;^!p::GroupActivate, Picasa, R
;;^!z::GroupActivate, FileZilla, R
;; ^!u::GroupActivate, Music, R
^!x::GroupActivate, OtherEditor, R
^!v::GroupActivate, VisualStudio, R
^!w::GroupActivate, WinExplorer, R
;;f4::GroupActivate, FindWindow, R
f1::XButton1
f2::Browser_Forward

;;;;;;;;;;;;;;;;;;;;;;;;;;CONDITIONAL GROUP BINDINGS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; if not WinActive("ahk_exe notepad++.exe") and not WinActive("ahk_exe devenv.exe")
	; ^!i::GroupActivate, Stickies, R
; #IfWinNotActive
;sc13C::GroupActivate, Music, R	;; this is the music keyboard button
;sc13C::SendInput {Ctrl down}, {Tab} 	SendInput {Left}, {Up}, {Ctrl up}	; this is for VS switching back to a tool window


;^!1::SendInput, {Home}
;^!2::SendInput, {End}
;^!3::SendInput, {PgUp}
;^!4::SendInput, {PgDn}
;^!5::SendInput, ^{Home}
;^!6::SendInput, ^{End}
;^!q::SendInput, !{F4}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;INCLUDES;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#Include C:\Users\PeterK\DropBox\Settings\AutoHotkey\ContextSensitiveHelp.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;FUNCTIONS;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Browser;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;PERSONAL HOT STRINGS;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
::mumx::hkingswell@aol.com, hilkingswell@gmail.com
::ifirstrowx::
	SendInput, {Raw}$('td[valign="top"').remove();$('#fanback').remove();$('script').remove();jQuery('iframe')[0].remove();jQuery('iframe')[0].remove();
Exit

::1@1::11@nfairpw11
::bgn::B3rg3nStreet658
::1cx::I'm 100% committed
::1c::I'm 100% committed
::pkx::Peter Kingswell
::pskx::peterkingswell@gmail.com
::centralx::david.hayman@gmail.com, r.j.miles@gmail.com, ollie.snell@gmail.com, devsherlock@gmail.com, richard.hinsliff@us.redbull.com
::658x::
	SendInput, 658 Bergen St, 4F{Enter}
	SendInput, Brooklyn{Enter}
	SendInput, NY{Enter}
	SendInput, 11238{Enter}
Exit
::mx::Many thanks,{Enter}Pete
::mxx::Merry Christmas,{Enter}Pete
::rxx::Regards, Peter
::lxx::Love, Pete
::bxx::Best, Peter
::cxx::Cheers, Pete
::yuo::you
::kgx::kategottlieb@yahoo.com
::jkgx::jkgottlieb@gmail.com
::347x::347-687-3835
::==x::
	SendInput,======================================
Exit
::--x::
	SendInput,--------------------------------------
Exit
::nox::
	SendInput, Hi, I'm currently happily employed, please remove me from your mailing list.{Enter}
	SendInput, Thanks, Peter
Exit

::5pike::
SendInput,==============={Enter}
SendInput,SCENARIO:		{Enter}
SendInput,SPIKE:			{Enter}
SendInput,COMPULSION:		{Enter}
SendInput,CONSEQUENCE:	{Enter}
SendInput,CHALLENGE:		{Enter}
Exit

::stdc::
SendInput,Situation	: {Enter}
SendInput,Dist. Cog.: {Enter}
SendInput,Dist. Bel.: {Enter}
SendInput,Conseq.	: {Enter}
SendInput,Challenge	: {Enter}
SendInput,{Up}{Up}{Up}{Up}{End}
Exit

::cxx::
::cz::
	SendInput, Cheers, Pete{Enter}
Exit

::tz::
::txx::
::thx::
	SendInput, Thanks, Pete{Enter}
Exit

::bxx::
::bz::
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

;;;;;;;;;;;;;;;;;;;;;;;;;;; CATCHPOINT TEXT SUBSTITUTIONS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
::pkcp::pkingswell@catchpoint.com
::ccx::catchpoint.com
::wcp::www.catchpoint.com
::cpx::Catchpoint
::vpnx::6EhUZKvQ6L
;;;;;;;;;;;;;;;;;;;;;;;;;;; CATCHPOINT ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;WORK HOT STRINGS;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#g::
	clipboard =
	SendInput ^c
	ClipWait  ; Wait for the clipboard to contain text.
	; Sleep, 200
	; clipboard := uriEncode(clipboard)
	Run, "http://www.google.com/search?q=%clipboard%"
Exit

; !q::
; WinGetTitle, title, A
; WinClose, %title%
; Exit

;; ^`::^p	;;	Ditto
;^!k::clipboard =
;	SendInput ^c
;	ClipWait  ; Wait for the clipboard to contain text.
;	Run, "http://en.wikipedia.org/wiki/Special:Search?search=%clipboard%&go=Go"
;Exit

^!r::Reload  ; Assign Ctrl-Alt-R as a hotkey to reload the script.

^!n::
	SetTitleMatchMode, 2
	IfWinExist, ahk_class Notepad++
		WinActivate
	else
		Run, C:\Program Files\Notepad++\notepad++.exe
Exit


;^!Enter::
;	SetTitleMatchMode, 1
;	IfWinExist Task Manager
;		WinActivate
;	Else
;		Run, TaskMgr.exe
;Exit

^!Enter::
	SetTitleMatchMode, 1
	IfWinExist Process Hacker -
		WinActivate
	Else
		Run, "C:\Program Files\Process Hacker 2\ProcessHacker.exe"
Exit

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;KEY BINDINGS;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Insert::Home
;PrintScreen::Home
;; AppsKey::RControl
;Pause::AppsKey
+!x::SendInput, !{F4}
;;^!q::SendInput, !{F4}	; clashes with SQL


;; RButton::LButton

;; RShift::AppsKey
;; ^right::SendInput, {End}
;; !^left::SendInput, {Home}
;; RAlt::RButton	;; fix for Win 10 explorer hang
;; MButton::RButton
;; RButton::AppsKey
; is this now a problem or is it sorted. Hard too tell. Looks better.
; Empty trash
#Del::FileRecycleEmpty ; win + del

; Default state of lock keys
SetNumlockState, AlwaysOn
SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff

; Always on Top
;; ^SPACE:: Winset, Alwaysontop, , A ; ctrl + space		;; interferes with command completion

;; #+down::SendInput,{Down}{Down}{Down}{Down}{Down}
;; #+up::SendInput,{Up}{Up}{Up}{Up}{Up}
;; NumpadEnter::AppsKey
CapsLock::Backspace

;; Teamviewer mode
; ^m::AppsKey
;; LWin::LControl

;;;;;;;;;;;;;;;;;;; BROWSER APPEND JSON FMT ;;;;;;;;;;;;;;;;;;;;;
#IfWinActive ahk_exe opera.exe
	!j::
		SendInput, ^l
		SendInput, {End}name=.|fmt=json{Enter}
	exit
#IfWinActive
;;;;;;;;;;;;;;;;;;; END BROWSER APPEND JSON FMT  ;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;; DOS command paging ;;;;;;;;;;;;;;;;;;;;;
#IfWinActive ahk_class ConsoleWindowClass
+PgUp::
Send {WheelUp} 
Return

+PgDn::
Send {WheelDown}
Return

^Up:: 
Send {WheelUp}
Return

^Down:: 
Send {WheelDown} 
Return

#IfWinActive
;;;;;;;;;;;;;;;;;;; DOS command paging ;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;; Hide Taskbar WIndows ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LWin & h::
if toggle := !toggle
{
	WinHide ahk_class Shell_TrayWnd
	WinHide Start ahk_class Button
}
else
{
	WinShow ahk_class Shell_TrayWnd
	WinShow Start ahk_class Button
}
return

#IfWinActive ahk_exe devenv.exe
; !Left::Send, {XButton1} ; the 'back' button on a mouse
; !Right::Send, {XButton2} ; the 'forward' button on a mouse
;^!Left::Send, ; TODO - alt down, tab, left, up, alt up

#IfWinActive
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

