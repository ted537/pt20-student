test_cases="
    scanner/string-literal
    
"

# generate outputs
for test_case in $test_cases; do
    ptc_command="./bin/ptc -o1 -t1 -L lib/pt test/$test_case.pt"
    # write stdout to file, ignore stderr
    ssltrace "$ptc_command" lib/pt/scan.def -e \
        > test/$test_case.output \
        2> /dev/null
done

# compare outputs to expected
for test_case in $test_cases; do
    if cmp -s test/$test_case.expected test/$test_case.output; then
        echo PASS: $test_case
    else
        echo FAIL: $test_case
    fi
done