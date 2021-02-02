#!/usr/bin/env python3
'''Asserts that keywords have been updated for Like and not PT Pascal'''
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
    '''scan a trivial source file containing only the keyword'''
    with open(SOURCE,'w') as source_file:
        source_file.write(keyword)

    ptc_command = f"./bin/ptc -o1 -t1 -L lib/pt {SOURCE}"
    emitted_tokens = check_output([
        'ssltrace', ptc_command, 'lib/pt/scan.def', '-e'
    ], stderr=DEVNULL)

    return str(emitted_tokens)

def recognized(keyword):
    return 'screened to ' in run_scanner(keyword)

def yesno(boolean):
    return 'yes' if boolean else 'no'

def test_old_keywords_gone():
    print("== ARE OLD KEYWORDS GONE?")
    for keyword in OLD_KEYWORDS:
        print(f'Is {keyword} gone?', end=' ')
        is_gone = not recognized(keyword)
        print(yesno(is_gone))
        assert is_gone
    print()


def test_new_keywords_present():
    print('== ARE NEW KEYWORDS PRESENT?')
    for keyword in NEW_KEYWORDS:
        print(f'Is {keyword} present?', end=' ')
        is_recognized = recognized(keyword)
        print(yesno(is_recognized))
        assert is_recognized
    print()


def test_all_keywords():
    test_old_keywords_gone()
    test_new_keywords_present()
    print("All tests passed!")


if __name__ == '__main__':
    test_all_keywords()