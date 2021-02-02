#!/usr/bin/env python3
from subprocess import check_output, DEVNULL

OLD_KEYWORDS=[
    'array',
    'begin',
    'case',
    'const',
    'div',
    'do',
    'mod',
    'procedure',
    'program',
    'type',
    'until'
]

NEW_KEYWORDS=[
    'choose',
    'elseif',
    'fun',
    'is',
    'like',
    'pkg',
    'public',
    'using',
    'val',
    'when'
]

SOURCE='/tmp/keywords.pt'

def run_scanner(keyword):
    with open(SOURCE,'w') as source_file:
        source_file.write(keyword)
    ptc_command = f"./bin/ptc -o1 -t1 -L lib/pt {SOURCE}"
    emitted_tokens = check_output([
        'ssltrace', ptc_command, 'lib/pt/scan.def', '-e'
    ], stderr=DEVNULL)
    return str(emitted_tokens)

def recognized(keyword):
    return 'screened to ' in run_scanner(keyword)


def test_old_keywords_gone():
    print("== ARE OLD KEYWORDS GONE?")
    for keyword in OLD_KEYWORDS:
        print(f'Is {keyword} gone?', end=' ')
        assert not recognized(keyword)
        print('yes')
    print()

def test_new_keywords_present():
    print('== ARE NEW KEYWORDS PRESENT?')
    for keyword in NEW_KEYWORDS:
        print(f'Is {keyword} present?', end=' ')
        assert recognized(keyword)
        print('yes')
    print()

def test_all_keywords():
    test_old_keywords_gone()
    test_new_keywords_present()

if __name__ == '__main__':
    test_all_keywords()