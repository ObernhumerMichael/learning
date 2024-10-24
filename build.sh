# find ./ -name '*.md'| entr ./build.sh /_
base_dir="$(pwd)"
template="$base_dir/template/eisvogel"

for filename in "$@"; do
    basename="${filename%%.*}"
    file_dir=$(dirname "$filename")

    cd $file_dir

    mmdc -i $filename -o temp.md -e png
    sed -i 's/!\[diagram\]/!\[\]/g' temp.md
    pandoc temp.md -o $basename.pdf --from markdown --template=$template --listings --number-sections
    rm temp-*.png temp.md -f

    cd $base_dir
done
