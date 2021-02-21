from pathlib import Path
from os import PathLike
from subprocess import check_output, DEVNULL
from functools import partial
import pytest

def striplines(text):
    return [
        line.strip()
        for line in text.split('\n')
    ]

def compare_stripped(a,b):
    return striplines(a) == striplines(b)

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

@pytest.mark.parametrize('path',find_test_paths('test/scanner'))
def test_scanner(path):
    output = scanner_ssltrace(path+'.pt')
    with open(path+'.expected') as file:
        expected = file.read()
    assert compare_stripped(output,expected)

@pytest.mark.parametrize('path',find_test_paths('test/parser'))
def test_parser(path):
    
