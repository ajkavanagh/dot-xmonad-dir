# Xmonad and xmobar via stack + configuration

This repository, which also includes the xmonad.hs and related files, provides
the configuration for running Xmonad from git.  This leans heavily on Brian
Buccola's blog post
[How to install xmonad and xmobar via stack][1].  The main difference is that
this is a git repository, and the Xmonad, xmonad-contrib and xmobar git
repositories are submodules.

If you don't know how to get to the point where you have stack installed and
able to build this, please follow Brian's [blog post][1].

## Recap

Run `stack install` to install the `xmobar` and `xmonad` executables into the
`$HOME/.local/bin/` directory.

## The build script

The `build` script in the `$HOME/.xmonad` directory is invoked when `xmonad
--recompile` is issued.  This is used to recompile `xmonad.hs` (the
configuration) when it is changed so that it can be used.  Yes, the
configuration is linked into the main xmonad executable at runtime.




[1]: https://brianbuccola.com/how-to-install-xmonad-and-xmobar-via-stack/
