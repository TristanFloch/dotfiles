-- http://projects.haskell.org/xmobar/
-- install xmobar with these flags: --flags="with_alsa" --flags="with_mpd" --flags="with_xft"  OR --flags="all_extensions"
-- you can find weather location codes here: http://weather.noaa.gov/index.html

Config { font    = "xft:Ubuntu:weight=bold:pixelsize=12:antialias=true:hinting=true"
       , additionalFonts = [ "xft:Mononoki Nerd Font:pixelsize=12:antialias=true:hinting=true"
                           , "xft:FontAwesome:pixelsize=13"
                           ]
       , bgColor = "#282c34"
       , fgColor = "#ff6c6b"
       -- , position = Static { xpos = 0 , ypos = 0, width = 1920, height = 24 }
       , position = Top
       , lowerOnStart = True
       , hideOnStart = False
       , allDesktops = True
       , persistent = True
       , iconRoot = "/home/tristan/.xmonad/xpm/"  -- default: "."
       , commands = [
                      -- Time and date
                      Run Date "<fn=1>\xf133 </fn>  %d %b %Y - %H:%M " "date" 50
                      -- Network up and down
                    -- , Run Network "enp6s0" ["-t", "<fn=1>\xf0ab </fn>  <rx>kb  <fn=1>\xf0aa</fn>  <tx>kb"] 20
                    , Run Network "enp2s0" ["-L","0","-H","32","--normal","green","--high","red"] 10
                    -- , Run Network "wlp1s0" ["-L","0","-H","32","--normal","green","--high","red"] 10
                      -- Cpu usage in percent
                    , Run Cpu ["-t", "<fn=1>\xf85a </fn><total>%", "-H", "50", "--high", "red"] 20
                      -- Ram used number and percent
                    , Run Memory ["-t", "<fn=1> </fn>  <usedratio>%"] 20
                      -- Disk space free
                    , Run DiskU [("/", "<fn=1> </fn>  <free>")] [] 60

                    -- , Run Battery ["-t", "<acstatus>: <left>% - <timeleft>", "--", --"-c", "charge_full"
                    --                , "-O", "AC", "-o", "Bat", "-h", "green", "-l", "red"] 10
                      -- This script is in my dotfiles repo in .local/bin.
                      -- , Run Com "~/.local/bin/pacupdate" [] "pacupdate" 36000
                      -- Runs a standard shell command 'uname -r' to get kernel version
                    , Run Com "uname" ["-r"] "" 3600
                      -- Prints out the left side items such as workspaces, layout, etc.
                      -- The workspaces are 'clickable' in my configs.
                    , Run UnsafeStdinReader
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = " <action=`xdotool key control+alt+g`><icon=haskell_20.xpm/> </action><fc=#666666>  |</fc> %UnsafeStdinReader% }{ <fc=#666666> |</fc> <fc=#b3afc2><fn=1> </fn> %uname% </fc><fc=#666666> |</fc> <fc=#ecbe7b> %cpu% </fc><fc=#666666> |</fc> <fc=#ff6c6b> %memory% </fc><fc=#666666> |</fc> <fc=#51afef> %disku% </fc><fc=#666666> |</fc> <fc=#98be65> %enp2s0% </fc><fc=#666666> |</fc>  <fc=#c678dd><fn=1> </fn>  %pacupdate% </fc><fc=#666666> |</fc> <fc=#46d9ff> %date%  </fc>"
       }
