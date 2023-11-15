file_count=
directory_count=0
else_count=0
for a in *
do
  if [-f "$a" ];then
  ( (file_count++))
  elif [ -d "$a"];then
  ((directory_count++))
  else_count
  ((else_count++))
  fi
done



echo "file`s count: $file_count"
echo "directory`s count: $directory count"
echo "other`s count: $else_count"