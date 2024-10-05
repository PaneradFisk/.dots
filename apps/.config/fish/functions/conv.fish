function conv -d "convert F to C or C to F"
    argparse h/help f/fahrenheit c/celsius -- $argv
    or return

    if set -ql _flag_help
        echo "conv [FLAG] temperature"
        echo "-c --celius     | Convert from F to C."
        echo "-f --fahrenheit | Convert from C to F."
        echo "-h --help       | Show this help."
        return 0
    end

    set -l temp $argv[1]

    if set -ql _flag_fahrenheit
        set temp_f (math "$temp * 1.8 + 32")
        echo "$temp_f fahrenheit"
    end

    if set -ql _flag_celsius
        set temp_c (math "($temp - 32) * 5 / 9")
        echo "$temp_c celsius"
    end

end
