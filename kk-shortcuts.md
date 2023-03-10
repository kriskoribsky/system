# kk-system shortcut philosophy

Keybindings of any system should be _minimal_, _sensible_, & _consistent_ across apps & operating systems.\
There are 3 scopes of keyboard shortcuts:

1. **System** - universal system shortcuts, can be used anywhere, OS agnostic, not modifiable
2. **Desktop** - desktop environment shortcuts, used to manipulate OS GUI, these vary between OSs but usually can be modified
3. **App** - app specific shortcuts, used to perform certain taks in an app, different on every app, can be modified

Each of these levels should have its _own main control key_! Although this convention is quite strict and not used commonly, it is very important for key philosophies of kk-system.\
Also make sure to _disable any shortcuts_ on your system which you do not use!

- super + modifier - desktop environment specific actions (workspaces, launching apps, windows)<br>
- alt + modifier - widnow manipulation (zzom, alt+tab -> switch apps, alt+` -> switch windows)<br>
- ctrl + modifier - CLI + OS sensibles (ctrl+C, ctrl+V, ...)<br>
- **disable any unused shortcuts!**

## Layouts

Apart from shortcuts, keyboard layouts are also very important for productivity.\
Rules for layouts follow similiar philosophy:

- _minimal_ - don't use many keyboard layouts if you dont need them
- _sensible_ - use simple, proven layouts
- _consisent_ - layouts with language agnostic main letter keys

From experience **QWERTY** keyboard layout adheres to all of these criteria,\
_qwerty_ can also be used in multiple languages: english, slovak, czech, etc.

## Shortcuts

### 1. System

Mainly text manipulation & navigation.\
Control key: **`Ctrl`**

```
Ctrl+X          Cut
Ctrl+C          Copy
Ctrl+V          Paste
Ctrl+A          Select all

Ctrl+Arr        Move cursor one word at a time
Ctrl+Shift+Arr  Select words
Ctrl+Del        Delete next word
Ctrl+Bksp       Delete last word

Ctrl+F          Find

Ctrl+Z          Undo
Ctrl+Shift+Z    Redo
Ctrl+S          Save

Ctrl+=          Zoom in
Ctrl+-          Zoom out

Ctrl+N          Open new document
Ctrl+O          Open existing document
Ctrl+P          Print

Home            Navigate to the beginning
End             Navigate to the end
F1              Help
F11             Toggle fullscreen
```

### 2. Desktop

Desktop environment manipulation, window management, device functions.\
Control key: **`Super`**

```
Super           *Overview* (search, workspaces, apps)
Super+Tab       Switch apps
Super+`         Switch app windows
Super+Left      Move to worskpace on the left
Super+Right     Move to workspace on the right
Super+W         Close app

Super+0         Root folder
Super+9         Home folder
Super+1         Launch terminal
Super+2         Launch calculator

Super+=         Increase text size
Super+-         Decrese text size
Super+Space     Switch to next input source
R-Alt           Alternate characters key

Middle-Clk      Minimize window
Double-Clk      Maximize window

Super+L         Lock screen
Super+Print     Take a screenshot interactively
Print           Take a screenshot
Super+F1        Run command prompt
Super+F11       Clipboard previous entry
Super+F12       Clipboard next entry
Mouse-1         Mute microphone
Mouse-2         Mute speakers
```

### 3. Apps

Various apps, in-app functionality. Sometimes can use other control keys.\
Control key: **`Ctrl`**, **`Alt`**

#### Terminal

```
Ctrl+C          Copy
Ctrl+V          Paste
Ctrl+K          Kill
Ctrl+Shift+V    Verbatim insert

Ctrl+T          New tab
Ctrl+N          New window
Ctrl+W          Close tab
```

#### VS Code

```
@source:system
@source:extension

Ctrl+Alt


@source:user





```

#### Neovim

#### Google chrome

```
Ctrl+T          New tab
Ctrl+N          New window
Ctrl+W          Close tab
```
