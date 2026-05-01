In the home directory:

```sh
git clone --bare https://github.com/mitsaucepls/.files.git
```

```sh
git --git-dir=$HOME/.files --work-tree=$HOME "$@" checkout
```
