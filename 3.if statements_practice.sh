mkdir mydir
cd mydir
file_name="first.txt"
if [-f "$first.txt"]; then
    echo "file exists"
else
    echo "file does not exist."
fi