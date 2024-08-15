# find ./ -name '*.md'| entr ./build.sh /_
base_dir="$(pwd)"
template="$base_dir/template/eisvogel"

for filename in "$@"; do
    basename="${filename%%.*}"
    file_dir=$(dirname "$filename")

    cd $file_dir
    pandoc $filename -o $basename.pdf --from markdown --template=$template --listings --number-sections
    cd $base_dir
done
