#!/bin/bash

# Reference: https://gist.github.com/pkuczynski/8665367
parse_yaml() {
    local prefix=$2
    local s='[[:space:]]*' w='[a-zA-Z0-9_]*' fs=$(echo @|tr @ '\034')
    sed -ne "s|^\($s\)\($w\)$s:$s\"\(.*\)\"$s\$|\1$fs\2$fs\3|p" \
    -e "s|^\($s\)\($w\)$s:$s\(.*\)$s\$|\1$fs\2$fs\3|p"  $1 |
    awk -F$fs '{
        indent = length($1)/2;
        vname[indent] = $2;
        for (i in vname) {if (i > indent) {delete vname[i]}}
        if (length($3) > 0) {
            vn=""; for (i=0; i<indent; i++) {vn=(vn)(vname[i])("_")}
            printf("%s%s%s=\"%s\"\n", "'$prefix'",vn, $2, $3);
        }
    }'
}

# Read yaml file
eval $(parse_yaml config.yaml "config_")

echo "Executables will be copied to $config_GlobalFolder"

# Reference: https://superuser.com/questions/31464/looping-through-ls-results-in-bash-shell-script
for f in `find . -type f`; do
    # Reference: https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
    filename=$(basename -- "$f")
    extension="${filename##*.}"
    if [ $extension = "py" ] || [ $extension = "sh" ] && [ $filename != "make_global_app.sh" ]
    then
        dir=$(dirname -- "$f")
        file="${filename%.*}"
        cp $dir/$filename $config_GlobalFolder/$file; chmod +x $config_GlobalFolder/$file
        echo "cp $dir/$filename $config_GlobalFolder/$file; chmod +x $config_GlobalFolder/$file"
    fi
done
