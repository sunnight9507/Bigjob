from bs4 import BeautifulSoup
from requests.exceptions import HTTPError
from requests.compat import urlparse, urljoin
from urllib.robotparser import RobotFileParser
import time
import requests
import re

def canfetch(url, agent='*', path='/'):
    '''
    robot.txt 확인 후 project 가능하면 True 안되면 False
    :param url:
    :param agent:
    :param path:
    :return:
    '''
    robot = RobotFileParser(urljoin(url, '/robots.txt'))
    robot.read()
    return robot.can_fetch(agent, urlparse(url)[2])

def download(url, params={},method='GET'):
    '''
    원하는 url project
    :param url: project 할 url
    :param params:
    :param headers:
    :param method:
    :param limit:
    :return:
    '''
    headers = {'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'}
    resp = requests.request(method, url,
                          params=params if method == 'GET' else {},
                          data=params if method == 'POST' else {},
                          headers=headers)

    return resp

if __name__ == '__main__':
    robot = RobotFileParser()

    url = 'http://www.zooseyo.or.kr/Yu_abandon/abandonment_list_api.php'
    page = 1

    resp = download(url = url,
                    params ={'page' : page},
                    method='GET')

    # dom = BeautifulSoup(resp.content, 'html.parser')

    # urllist 가져오기
    urllist = []
    [urllist.append(url.replace('list', 'view') + '?' + _) for _ in re.findall(r'na_open_window\(\'win\', \'abandonment_view_api.php\?([^\"]+)', resp.text)]

    [print(_) for _ in urllist]

    # urllist 돌면서 DB에 적재
    result = []

    [result.append(download(url = url, params ={'page' : page},method='GET').text) for _ in urllist[:3]]

    [print(_) for _ in result]