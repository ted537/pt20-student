ptc_command="./bin/ptc -o2 -t2 -L lib/pt $test_case.pt"
# write stdout to file, ignore stderr
ssltrace "$ptc_command" lib/pt/parser.def -e \
    > $test_case.output \
    2> /dev/null
