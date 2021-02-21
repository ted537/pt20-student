from pathlib import Path
from os import PathLike
from subprocess import check_output, DEVNULL
from functools import partial
import pytest

def normalize(text):
    all_lines = (
        ' '.join(line.strip().split())
        for line in text.split('\n')
    )
    return [
        line for line in all_lines
        if line
    ]

def assert_expected_matches_output(expected, output):
    assert normalize(expected) == normalize(output)

def ssltracer(def_filename,o,t):
    def ssltrace(pt_filename):
        ptc_command = f'./bin/ptc -o{o} -t{t} -L lib/pt {pt_filename}'
        raw_trace = check_output([
            'ssltrace',ptc_command,def_filename,'-e',
        ], stderr=DEVNULL)
        return raw_trace.decode('ascii')
    return ssltrace

scanner_ssltrace = ssltracer('lib/pt/scan.def',o=1,t=1)
parser_ssltrace = ssltracer('lib/pt/parser.def',o=2,t=2)

def find_test_paths(root: PathLike):
    return [
        str(path.with_suffix(''))
        for path in Path(root).rglob('*.expected')
    ]

def read_expected(path):
    with open(Path(path).with_suffix('.expected')) as file:
        return file.read()

@pytest.mark.parametrize('path',find_test_paths('test/scanner'))
def test_scanner(path):
    output = scanner_ssltrace(path+'.pt')
    assert_expected_matches_output(output,read_expected(path))

@pytest.mark.parametrize('path',find_test_paths('test/parser'))
def test_parser(path):
    with open(path+'.scanned','w') as file:
        file.write(scanner_ssltrace(path+'.pt'))
    parsed = parser_ssltrace(path+'.pt')
    assert_expected_matches_output(parsed,read_expected(path))
    
