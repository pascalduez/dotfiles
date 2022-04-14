
### Export

```
code --list-extensions > extensions.txt
```

```
cp ~/.config/Code/User/settings.json .
cp ~/.config/Code/User/keybindings.json .

```


### Install

```
cat extensions.txt | xargs -L 1 code --install-extension
```

```
cp settings.json ~/.config/Code/User/.
cp keybindings.json ~/.config/Code/User/.
```