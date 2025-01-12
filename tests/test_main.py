from testGithubActions.main import create_empty_dataframe


def test_create_empty_dataframe():
    assert create_empty_dataframe().empty
