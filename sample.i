        DO (5) NEXT
    (5) DO FORGET #1
        PLEASE WRITE IN :1
        DO .1 <- 'V":1~'#32768$#0'"$#1'~#3
        DO (1) NEXT
        DO :1 <- "'V":1~'#65535$#0'"$#65535' \
                ~'#0$#65535'"$"'V":1~'#0$#65535'" \
                $#65535'~'#0$#65535'"
        DO :2 <- #1
        PLEASE DO (4) NEXT
    (4) DO FORGET #1
        DO .1 <- "'V":1~'#65535$#0'"$":2~'#65535 \
                $#0'"'~'#0$#65535'"$"'V":1~'#0 \
                $#65535'"$":2~'#65535$#0'"'~'#0$#65535'"
        DO (1) NEXT
        DO :2 <- ":2~'#0$#65535'" \
                $"'":2~'#65535$#0'"$#0'~'#32767$#1'"
        DO (4) NEXT
    (2) DO RESUME .1
    (1) PLEASE DO (2) NEXT
        PLEASE FORGET #1
        DO READ OUT :1
        PLEASE DO .1 <- 'V"':1~:1'~#1"$#1'~#3
        DO (3) NEXT
        PLEASE DO (5) NEXT
    (3) DO (2) NEXT
        PLEASE GIVE UP
