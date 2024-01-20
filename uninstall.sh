if [[ -f "$INFO" ]]; then
  while read -r LINE; do
    if [[ "${LINE: -1}" == "~" ]]; then
      continue
    elif [[ -f "${LINE}~" ]]; then
      mv -f "${LINE}~" "$LINE"
    else
      rm -f "$LINE"
      while true; do
        LINE=$(dirname "$LINE")
        [[ -n "$(ls -A "$LINE" 2>/dev/null)" ]] && break || rm -rf "$LINE"
      done
    fi
  done < "$INFO"
  rm -f "$INFO"
fi