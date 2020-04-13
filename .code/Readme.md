
### Export

```
code --list-extensions > extensions.txt
```

```
cp ~/.config/Code/User/settings.json .
```


### Install

```
cat extensions.txt | xargs -L 1 code --install-extension
```

```
cp settings.json ~/.config/Code/User/.
```