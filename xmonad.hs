import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run (spawnPipe)
import XMonad.Util.EZConfig (additionalKeys)
import System.IO

main = do
    xmonad $ defaultConfig
        { manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , modMask = mod4Mask    -- rebind Mod to the Windows/Apple key
        } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_x), spawn "~/bin/fuzzy-lock.sh")
        ]
