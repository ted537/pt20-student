from pathlib import Path
from os import PathLike
from subprocess import check_output, DEVNULL
from functools import partial
import pytest

from ssltrace import scanner_ssltrace, parser_ssltrace, normalize


def assert_expected_matches_output(expected, output):
    """ Compare expected to output, ignoring minor whitespace differences """
    assert normalize(expected) == normalize(output)


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
    scanned = scanner_ssltrace(path)
    assert_expected_matches_output(scanned,read_expected(path))

@pytest.mark.parametrize('path',find_test_paths('test/parser'))
def test_parser(path):
    scanned = scanner_ssltrace(path)
    parsed = parser_ssltrace(path)
    assert_expected_matches_output(parsed,read_expected(path))
    
