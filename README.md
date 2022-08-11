# st 0.8.5
My build for [st](https://st.suckless.org/).

## Patches

- [alpha](https://st.suckless.org/patches/alpha/) (80%)
- [scrollback](https://st.suckless.org/patches/scrollback/)
- [blinking cursor](https://st.suckless.org/patches/blinking_cursor/),
but underline not work, idk why
- color for index 16 - 255

note:
    all patches are modified,
    modification on config.def.h are removed,
    because some of them are collided

## Keybinds

TERMMOD = Shift + Ctrl

```raw
Button2 (MidClick)   = paste
Button3 (RightClick) = copy
MouseUp              = scroll up
MouseDown            = scroll down
TERMMOD + MouseUp    = scroll 1 page up
TERMMOD + MouseDown  = scrill 1 page down

TERMMOD + PageUp   = increase font size
TERMMOD + PageDown = decrease font size
TERMMOD + Home     = reset font size
TERMMOD + C        = copy
TERMMOD + V        = paste
TERMMOD + H        = scroll 1 page down
TERMMOD + J        = scroll down
TERMMOD + K        = scroll up
TERMMOD + L        = scroll 1 page up
```

## TIPS

### Prevent st being upgraded in Gentoo

`/etc/portage/package.mask`

```raw
x11-terms/st
```

`/etc/portage/package.unmask`

```raw
=x11-terms/st-0.8.5
```

### Set default font without recompiling

This st build default font is monospace.

`~/.config/fontconfig/fonts.conf`

```xml
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "urn:fontconfig:fonts.dtd">
<fontconfig>
    <alias>
        <family>monospace</family>
        <prefer>
            <family>Fantasque Sans Mono</family>
        </prefer>
    </alias>
    <match target="font">
        <test name="family" qual="any">
            <string>monospace</string>
        </test>
        <edit name="pixelsize" mode="append">
            <double>12</double>
        </edit>
    </match>
</fontconfig>
```

Try to change 12 to 200 for example, and reopen your terminal.
