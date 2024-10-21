function nn
    set -l timestamp (date +"%Y-%m-%d_%H%M")
    cd $path_journey/notes
    cp $path_journey/templates/template_hourney.md "$timestamp.md"
    $EDITOR "$timestamp.md"
end
