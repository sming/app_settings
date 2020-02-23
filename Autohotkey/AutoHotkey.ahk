;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AUTO EXECUTE SECTION ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; SetTitleMatchMode
; 1: A window's title must start with the specified WinTitle to be a match.
; 2: A window's title can contain WinTitle anywhere inside it to be a match.
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

;; GroupAdd, Browser, ahk_class Chrome_WidgetWin_1	;; weirdly activates MS Code
;; GroupAdd, Browser, , , ,WatchESPN - Google Chrome
GroupAdd, Browser, - Opera, , , Tabli - Opera
GroupAdd, Browser,ahk_exe vivaldi.exe
GroupAdd, Console, ahk_class ConsoleWindowClass
GroupAdd, Cygwin, ahk_class mintty
 ;; , , , TweetDeck - Google Chrome
GroupAdd, Chrome, ahk_exe chrome.exe, , , DevTools - 
GroupAdd, ChromeFiltered1, ahk_group Chrome, , , Login - Google Chrome
GroupAdd, ChromeFiltered2, ahk_group ChromeFiltered1 ;; ;; unfortunately, GraphiQL has this title :(, , , Maestro - Google Chrome
GroupAdd, ChromeFiltered, ahk_group ChromeFiltered2 ;;, , , Maestro - Google Chrome
GroupAdd, ChromePrivate, jp.catchpoint.com
GroupAdd, DevTools, DevTools - 
GroupAdd, DeveloperTools, Developer Tools -
GroupAdd, Evernote, peterkingswell - Evernote
GroupAdd, Excel, ahk_exe EXCEL.EXE
GroupAdd, FileZilla, FileZilla
GroupAdd, Foxit, - Foxit Reader
GroupAdd, GCal, - Calendar
GroupAdd, GCal, Calendar
GroupAdd, GCal, Google Calendar
GroupAdd, GCal, Sunrise Calendar
GroupAdd, GCal, is starting at
GroupAdd, Hangouts, Ninja chat
GroupAdd, IE, - Windows Internet Explorer
GroupAdd, Keep, Google Keep
GroupAdd, MailClient, - Meeting
GroupAdd, MailClient, - Message (HTML)
GroupAdd, MailClient, Reminder(s)
GroupAdd, MailClient, pkingswell@catchpoint.com - Outlook
GroupAdd, Music, Google Play Music
GroupAdd, OneNote, - OneNote
GroupAdd, OtherEditor, - Notepad++
GroupAdd, OtherEditor, - Sublime Text (UNREGISTERED)
GroupAdd, OtherEditor, Atom
GroupAdd, Picasa, Picasa 3
GroupAdd, RDP, Remote Desktop
GroupAdd, SQL, HeidiSQL 
GroupAdd, SQL, SQL Operations Studio
GroupAdd, SQL, Azure Data Studio
GroupAdd, SQL, Microsoft SQL Server Management
GroupAdd, Speakers, Volume Mixer - Speakers (Realtek High Definition Audio)
GroupAdd, Stickies, Sticky Notes
GroupAdd, Tabli,Tabli - Opera, , , 
GroupAdd, Teams,| Microsoft Teams
GroupAdd, Timer, ahk_exe chrome.exe
GroupAdd, Twitter, TweetDeck 
GroupAdd, Twitter, TwitDuck
GroupAdd, Twitter, Twitter Timeline 
GroupAdd, Ubuntu, ahk_exe ubuntu.exe
GroupAdd, VisualStudioAndNotepad, Microsoft Visual Studio
GroupAdd, VisualStudioAndNotepad, Notepad++
GroupAdd, VisualStudioCode, ahk_exe Code.exe
GroupAdd, VisualStudioGit, - Microsoft Visual Studio ; , , , mega	; everything but mega
GroupAdd, VisualStudioHawkUI, CatchPoint.Hawk.FrontEnd.HawkUI 
GroupAdd, VisualStudioMaestro, CatchPoint.Hawk.FrontEnd.Maestro 
GroupAdd, VisualStudioMega, mega_2017 - Microsoft Visual Studio
GroupAdd, VisualStudioMega, mega_2017(Debugging) - Microsoft Visual Studio
GroupAdd, VisualStudioMega, mega_2017(Running) - Microsoft Visual 
GroupAdd, VisualStudioJSP, CatchPoint.Hawk.FrontEnd.JavaScriptProvider
GroupAdd, WMP, Windows Media Player
GroupAdd, WinExplorer, ahk_class CabinetWClass	; Windows explorer plain
GroupAdd, WinExplorer, ahk_class ExploreWClass	; Windows explorer with folder sidebar
GroupAdd, Word, - Word
GroupAdd, iTunes, iTunes
GroupAdd, FindWindow,- search-ms:query=
GroupAdd, FindWindow,- search-ms:displayname=

;;;;;;;;;;;;;;;;;;;;;;;;;;UNCONDITIONAL GROUP BINDINGS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Use ^! since it works via TV too
^!a::GroupActivate, Teams, R
;#IfWinNotActive, ahk_exe devenv.exe
;	^!b::GroupActivate, Chrome, R
;#IfWinNotActive
^!c::GroupActivate, Cygwin, R
; ^!c::GroupActivate, Ubuntu, R
^!d::GroupActivate, DevTools, R
^!f::GroupActivate, ChromeFiltered, R
^!g::GroupActivate, VisualStudioGit, R
^!h::GroupActivate, VisualStudioHawkUI, R
^+i::GroupActivate, ChromePrivate, R
!^+i::WinHide, Stickies
;;^!k::GroupActivate, Keep, R
;; ^!m::GroupActivate, VisualStudioMaestro, R
^!m::GroupActivate, MailClient, R
^!n::GroupActivate, VisualStudioCode, R
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
;; ^!t::GroupActivate, Tabli, R
; RControl & t::GroupActivate, Tabli, R
;RControl & t::MsgBox IT WORKS!
; ^!r::GroupActivate, Robomongo, R
^!p::GroupActivate, VisualStudioJSP, R
;;^!z::GroupActivate, FileZilla, R
;; ^!u::GroupActivate, Music, R
^!s::GroupActivate, VisualStudioCode, R
^!x::GroupActivate, Excel, R
^!v::GroupActivate, VisualStudioGit, R
;^!u::GroupActivate, VisualStudioHawkUI, R
^!u::GroupActivate, Ubuntu
^!+v::GroupActivate, VisualStudioGit, R
^!w::GroupActivate, WinExplorer, R
^!y::GroupActivate, Cygwin, R
;;f4::GroupActivate, FindWindow, R
^!z::GroupActivate, MailClient, R

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
!+q::SendInput, !{F4}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;INCLUDES;;;;;;;;;;;;;;;;;;;;;;;;;;;
MsgBox, %settingsPath%
#Include ContextSensitiveHelp.ahk
;#Include WindowPadX\WindowPadX.ahk
;WindowPadX_Init(WINDOWPADX_INI_PATH)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;FUNCTIONS;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Browser;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;PERSONAL HOT STRINGS;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#g::
	clipboard =
	SendInput ^c
	ClipWait  ; Wait for the clipboard to contain text.
	; Sleep, 200
	; clipboard := uriEncode(clipboard)
	Run, "http://www.google.com/search?q=%clipboard%"
Exit

::omfg::OMFG
::hsx::Hearthstone
::focd::Fragility OCD
::wrtx::w.r.t.
::egx::e.g.
::ifirstrowx::
	SendInput, {Raw}$('td[valign="top"').remove();$('#fanback').remove();$('script').remove();jQuery('iframe')[0].remove();jQuery('iframe')[0].remove();
Exit

::pkvs::P3t3KateVaughnSadie
::bgn::B3rg3nStreet658
::1cx::I'm 100% committed
::pskx::peterkingswell@gmail.com
::pkx::peterkingswell@gmail.com
::pkgx::peterkingswell@gmail.com
::centralx::david.hayman@gmail.com, r.j.miles@gmail.com, ollie.snell@gmail.com, devsherlock@gmail.com, richard.hinsliff@us.redbull.com
::658x::
	SendInput, 658 Bergen St, 4F{Enter}
	SendInput, Brooklyn{Enter}
	SendInput, NY{Enter}
	SendInput, 11238{Enter}
Exit
::nothanx::
	SendInput, Hi there,{Enter}{Enter}
	SendInput, thanks for getting in contact with me but I'm currently happily employed and am not looking for other opportunities.{Enter}{Enter}
	SendInput, Best,{Enter}
	SendInput, Peter
Exit
::shrg::
	SendInput, {Raw}¯\_(^^)_/¯ ;; ¯\_(*_*)_/¯ ;; ¯\_(ツ)_/¯
Exit
::sshrg::
	SendInput, {Raw}¯\_(- -)_/¯ ;; ¯\_(*_*)_/¯ ;; ¯\_(ツ)_/¯
Exit
::shrugx::
	SendInput, {Raw}¯\_(^^)_/¯ ;; ¯\_(*_*)_/¯ ;;¯\_(ツ)_/¯
Exit
::sshrugx::
	SendInput, {Raw}¯\_(- -)_/¯ ;; ¯\_(*_*)_/¯ ;;¯\_(ツ)_/¯
Exit
::tfx::
	SendInput, {Raw}∴
Exit
::thmbs::	;; thumbs-up
SendInput,{Space}{Space}{Space}{Space}{Space}/@{Enter}
SendInput,{Space}{Space}{Space}{Space}{Space}\{Space}\{Enter}
SendInput,{Space}{Space}{Space}___>{Space}\{Enter}
SendInput,{Space}{Space}(__O){Space}{Space}\{Enter}
SendInput,{Space}(____@){Space}{Space}\{Enter}
SendInput,{Space}(____@){Space}{Space}{Space}\{Enter}
SendInput,{Space}{Space}(__o)_{Space}{Space}{Space}{Space}\{Enter}
SendInput,{Space}{Space}{Space}{Space}{Space}{Space}{Space}{Space}\{Space}{Space}{Space}{Space}\{Enter}
Exit
::mxx::Many thanks,{Enter}Pete
::rxx::Regards, Peter
::lxx::Love, Pete
::amx::All my love, Pete
::bxx::Best, Peter
::cxx::Cheers, Pete
::czz::Cheers, Pete
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
::nothx::
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
SendInput,SITUATION{Tab}: {Enter}THOUGHTS{Tab}{Tab}: {Enter}BELIEFS{Tab}{Tab}: {Enter}CONSEQUENCES{Tab}{Tab}: {Enter}CHALLENGES{Tab}: {Enter}{Up}{Up}{Up}{Up}{Up}{End}
Exit
::stdcx::
SendInput,SITUATION{Tab}: {Enter}THOUGHTS{Tab}{Tab}: {Enter}BELIEFS{Tab}{Tab}: {Enter}CONSEQUENCES{Tab}{Tab}: {Enter}CHALLENGES{Tab}: {Enter}{Up}{Up}{Up}{Up}{Up}{End}
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
::avx::Available
::avd::AvailableDimension
::avm::AvailableMetric

::zoomlinkx::https://catchpoint.zoom.us/j/6056928590
::zoomidx::6056928590
::pkcp::pkingswell@catchpoint.com
::ccx::catchpoint.com
::wcp::www.catchpoint.com
::cpx::Catchpoint
::vpnx::6EhUZKvQ6L
::irfx::implemented review feedback.
::blcx::business_license_contract
::gsgx::glimpse_sonar_group

;;;;;;;;;;;;;;;;;;;;;;;;;;; CATCHPOINT ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;WORK HOT STRINGS;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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

; ^!n::
; 	SetTitleMatchMode, 2
; 	IfWinExist, ahk_class Notepad++
; 		WinActivate
; 	else
; 		Run, C:\Program Files\Notepad++\notepad++.exe
; Exit


;^!Enter::
;	SetTitleMatchMode, 1
;	IfWinExist Task Manager
;		WinActivate
;	Else
;		Run, TaskMgr.exe
;Exit

^+!Enter::
	SetTitleMatchMode, 1
	IfWinExist Process Hacker -
		WinActivate
	Else
		Run, "C:\Program Files\Process Hacker 2\ProcessHacker.exe"
Exit

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;; OS X to WINDOZE KEY BINDINGS;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#a::SendInput, ^a	;; get Select All on Windows when remoted in from Mac (cos Cmd-a on mac is Select all)
#z::SendInput, ^z	;; get Undo on Windows when remoted in from Mac (cos Cmd-z on mac is Undo)

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
#Enter::SendInput, ^{Enter}

;; When RDP'd in, I often confuse mac for windows keys. Hence translate the useless Windows ones.
#t::SendInput, ^t

;; Teamviewer mode
; ^m::AppsKey
; LWin::LControl
;;;;;;;;;;;;;;;;;;; VISUAL STUDIO BACK/FORWARD NAVIGATION ;;;;;;;;;;;;;;;;;;;;;
#IfWinActive ahk_exe devenv.exe
	f1::SendInput, ^-
	f2::Browser_Forward
	!Left::XButton1
	!Right::Browser_Forward
	;; !XButton1::SendInput, !F12	;; doesn't work for some reason
#IfWinActive


;;;;;;;;;;;;;;;;;;; BROWSER ACTIVE ;;;;;;;;;;;;;;;;;;;;;
#IfWinActive ahk_exe chrome.exe
	f1::XButton1
	f2::Browser_Forward
	!j::
		SendInput, ^l
		SendInput, {End}name=.|fmt=json{Enter}
	exit
	!m::
		SendInput, ^l
		SendInput, {End}name=.{Enter}
	exit
	^e::SendInput, {F2}		; for excel edit shortcut
#IfWinActive

#IfWinActive ahk_exe opera.exe
	f1::XButton1
	f2::Browser_Forward
	^9::
		SendInput, ^1
		Sleep, 200
		SendInput, ^+{Tab}
	exit
#IfWinActive
;;;;;;;;;;;;;;;;;;; END BROWSER ;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;; BACK/FORWARD NAVIGATION ;;;;;;;;;;;;;;;;;;;;;

#IfWinActive ahk_exe Teams.exe
	!Left::XButton1
	!Right::Browser_Forward
#IfWinActive

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

