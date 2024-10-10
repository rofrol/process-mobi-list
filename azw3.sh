SCRIPT_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo $SCRIPT_PATH
cd ~/Calibre\ Library/
while IFS="" read -r p || [ -n "$p" ]; do
  # printf '\n%s\n' "$p"
  dir="$(dirname "$p")"
  file="$(basename "$p" .azw3)"
  filename="$dir/$file.epub"
  # echo $dir
  # echo $file
  echo $filename
  if [ -f "$filename" ]; then
    echo "File found!"
    rm "$p"
  else
    echo "File not found!"
  fi

done <"$SCRIPT_PATH/azw3.txt"

# https://stackoverflow.com/questions/1521462/looping-through-the-content-of-a-file-in-bash
# https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash/7820227#7820227
# https://stackoverflow.com/questions/59895/how-do-i-get-the-directory-where-a-bash-script-is-located-from-within-the-script/246128#246128
# https://stackoverflow.com/questions/3963716/how-to-manually-expand-a-special-variable-ex-tilde-in-bash
