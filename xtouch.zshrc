function xtouch() {
  local ext
  case "$1" in
    t|txt) ext=".txt";;
    h|html) ext=".html";;
    he|htmlerb|html_erb) ext=".html.erb";;
    r|rb|ruby) ext=".rb";;
    j|js) ext=".js";;    
    p|py|python) ext=".py";;
    m|md) ext=".md";;
    cs|css) ext=".css";;
    s|scss) ext=".scss";;
    *) echo "Invalid alias. Usage: touch_alias <alias> <filename(s)>"; return;;
  esac
  
  shift
  for filename in "$@"; do
    touch "${filename}${ext}"
    echo "Created:\033[0;93m ${filename}${ext} \033[00m"
  done
}