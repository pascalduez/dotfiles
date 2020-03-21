
### Export

```
code --list-extensions > extensions.txt
```


### Install

```
cat extensions.txt | xargs -L 1 code --install-extension
```

```
cp settings.json ~/.config/Code/user/.
```