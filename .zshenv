typeset -U PATH path
path=("$HOME/.local/bin" "$HOME/.node_modules/bin" "$path[@]")
export PATH
export _JAVA_AWT_WM_NONREPARENTING=1
export TERM="xterm-256color"
export QT_QPA_PLATFORMTHEME=gtk2
export npm_config_prefix=~/.node_modules
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true'
#export AWT_TOOLKIT=MToolkit
export JUPYTERLAB_DIR=$HOME/.local/share/jupyter/lab
