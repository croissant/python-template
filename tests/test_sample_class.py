import pytest

class Sample():
    def __init__(self):
        self.value_yes = True
        self.value_no = False

    def yes(self):
        return self.value_yes

    def no(self):
        return self.value_no

"""
テスト用クラスは名称を'TestXxx'にする
"""
class TestSample():
    def setup(self):
        self.sample = Sample()

    def test_yes(self):
        assert self.sample.yes()

    def test_no(self):
        assert self.sample.no() == False

