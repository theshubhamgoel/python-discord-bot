# -*- coding: utf-8 -*-

import pytest
from python_discord_bot.skeleton import fib

__author__ = "Goel, Shubham"
__copyright__ = "Goel, Shubham"
__license__ = "mit"


def test_fib():
    assert fib(1) == 1
    assert fib(2) == 1
    assert fib(7) == 13
    with pytest.raises(AssertionError):
        fib(-10)