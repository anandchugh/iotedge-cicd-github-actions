import unittest


class First_Test(unittest.TestCase):
    def test_string(self):
        a = "some"
        b = "some"
        self.assertEqual(a, b)


if __name__ == "__main__":
    unittest.main()
