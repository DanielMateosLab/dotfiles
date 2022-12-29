## Edit default applications for file types

- Folder in ~/.local/share/applications contains .desktop files for each application.
- To set one of these applications as default for X file type, edit the file ~/.config/mimeapps.list
- [More info](https://wiki.archlinux.org/title/XDG_MIME_Applications#:~:text=mimeapps.list.-,mimeapps.list,-The%20XDG%20standard)
- Tip: Although deprecated, several applications still read/write to ~/.local/share/applications/mimeapps.list. To simplify maintenance, simply symlink it to ~/.config/mimeapps.list

## Manjaro - i3. General settings (like keyboard remapping)

- Use keyd.
- To set the keyboard layout, I had to append 'setxkbmap -model pc105 -layout us -variant altgr-intl' to '.profile'. This file is executed on startup and sets the keyboard layout using setxkbmap.
- To change dmenu 'open app preferences' change the file inside ~/.config/dmenu-recent
