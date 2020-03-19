import unittest
from fake_lib import this_does_a_thing

class TestFakeLib(unittest.TestCase):

    def test_this_does_a_thing(self):
        result = this_does_a_thing(1, 1)
        self.assertEqual(result, 2)