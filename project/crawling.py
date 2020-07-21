from bs4 import BeautifulSoup
from requests.compat import urlparse, urljoin
from urllib.robotparser import RobotFileParser
import requests
import re

def canfetch(url, agent='*', path='/'):
    '''
    robot.txt 확인 후 crawling 가능하면 True 안되면 False
    :param url:
    :param agent:
    :param path:
    :return: True / False
    '''
    robot = RobotFileParser(urljoin(url, '/robots.txt'))
    robot.read()
    return robot.can_fetch(agent, urlparse(url)[2])

def download(url, params={},method='GET',
             headers = {'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'}):
    '''
    url crawling
    :param url: project 할 url
    :param params:
    :param headers:
    :param method:
    :param limit:
    :return: response
    '''
    resp = requests.request(method, url,
                          params=params if method == 'GET' else {},
                          data=params if method == 'POST' else {},
                          headers=headers)

    return resp

def crawling_urllists(url, page_range):
    '''
    main url을 page range만큼 crawling
    :param url:
    :param page_range:
    :return: url list
    '''
    print('-'*10, '  Crawling start  ','-'*10)
    urllist = []
    for page in page_range:
        resp = download(url = url, params ={'page' : page}, method='GET')
        [urllist.append(url.replace('list', 'view') + '?' + _) for _ in re.findall(r'na_open_window\(\'win\', \'abandonment_view_api.php\?([^\"]+)', resp.text)]

    print('-' * 10, '  Crawling end  ', '-' * 10)
    return urllist

def scraping(urllist):
    '''
    image & 필요한 정보 scraping
    :param urllist:
    :return: dictionary 형태의 필요한 정보
    '''
    print('-' * 10, '  Scraping start  ', '-' * 10)

    result = []

    for url in urllist:
        data = dict()
        resp = download(url = url, method='GET')
        dom = BeautifulSoup(resp.text, 'lxml')
        tmp = dom.select('table.viewTable th, table.viewTable td')
        tmp = tmp[1:21] + tmp[-15:3]

        for i in range(0, len(tmp), 2):
            data[tmp[i].text.strip()] = tmp[i+1].text.strip()
        data['image'] = dom.select_one('img')['src']

        result.append(data)

    print('-' * 10, '  Scraping end  ', '-' * 10)
    return result

if __name__ == '__main__':
    robot = RobotFileParser()

    url = 'http://www.zooseyo.or.kr/Yu_abandon/abandonment_list_api.php'
    page_range = range(5)

    # scraping할 url crawling
    urllist = crawling_urllists(url, page_range)

    print([print(_) for _ in urllist])

    # urllist scraping
    result = scraping(urllist)

    print(len(result))
    print([print(_) for _ in result])