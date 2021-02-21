from pathlib import Path
from os import PathLike
from subprocess import check_output, DEVNULL
from functools import partial
import pytest

def ssltracer(def_filename,o,t):
    def ssltrace(pt_filename):
        ptc_command = f'./bin/ptc -o{o} -t{t} -L lib/pt {pt_filename}'
        raw_trace = check_output([
            'ssltrace',ptc_command,def_filename,'-e',
        ], stderr=DEVNULL)
        return '\n'.join(
            line
            for line in raw_trace.decode('ascii').split('\n')
        )
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
    scanner_trace = scanner_ssltrace(path+'.pt')
    print(scanner_trace)

@pytest.mark.parametrize('path',find_test_paths('test/parser'))
def test_parser(path):
    pass
