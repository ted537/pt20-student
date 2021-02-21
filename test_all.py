from pathlib import Path
from os import PathLike
from subprocess import check_output, DEVNULL
from functools import partial
import pytest

from ssltrace import scanner_ssltrace, parser_ssltrace, normalize


def assert_expected_matches_output(path, output):
    """ Compare expected to output, ignoring minor whitespace differences """
    with open(Path(path).with_suffix('.expected')) as file:
        expected = file.read()
    assert normalize(expected) == normalize(output)


def find_test_paths(root: PathLike):
    return [
        str(path.with_suffix(''))
        for path in Path(root).rglob('*.expected')
    ]

@pytest.mark.parametrize('path',find_test_paths('test/scanner'))
def test_scanner(path):
    scanned = scanner_ssltrace(path)
    assert_expected_matches_output(path, scanned)

@pytest.mark.parametrize('path',find_test_paths('test/parser'))
def test_parser(path):
    scanned = scanner_ssltrace(path)
    parsed = parser_ssltrace(path)
    assert_expected_matches_output(path, parsed)
    
