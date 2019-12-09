import requests
import pytest

def check_response_code(my_url):
	URL = "http://generator.swagger.io/api/swagger.json"
	
	response = requests.post(my_url)
	response_status = response.status_code
	return response_status
	

	
	


def test_response_code():
    assert check_response_code("http://generator.swagger.io/api/swagger.json") == 200
