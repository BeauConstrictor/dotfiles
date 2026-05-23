if status is-interactive

    set -U fish_greeting

end

function fish_prompt
    echo ""
    set left (set_color brblack)beau(set_color normal)@fedora" "(set_color brblack)(prompt_pwd)
    # set left "beau@fedora ~"

    set right (date "+%H:%M:%S")

    set width (tput cols)
    set left_len (string length --visible $left)
    set right_len (string length $right)

    set pad (math $width - $left_len - $right_len)

    if test $pad -lt 1
        set pad 1
    end

    printf "%s%*s%s\n" $left $pad "" $right

    printf (set_color normal)"> "(set_color green)"\$ "(set_color normal)
end
