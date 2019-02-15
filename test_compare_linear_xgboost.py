import unittest
from pathlib import Path
import os
from lambda_invegat2 import compare_linear_xgboost as co


class TestPlotXgboost(unittest.TestCase):
    def setUp(self):
        self.co = co()
        self.total_types, self.test_length, self.fn =  self.co.plot_xgboost(1,'tmp/test')
        self.path = Path(self.fn)

    def test_total(self):
        self.assertEqual(self.total_types, self.test_length)

    def png_file_exists(self):
        self.assertTrue(self.path.is_file())

    def tearDown(self):
        os.remove(self.fn)
        del self.co

if __name__ == '__main__':
    unittest.main()
