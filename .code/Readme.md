
### Export

```
code --list-extensions > .code/extensions.txt
```


### Install

```
cat .code/extensions.txt | xargs -L 1 code --install-extension
```
