from bs4 import BeautifulSoup
import requests
import re


def download(url, params={}, method='GET', headers={'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'}):
    '''
    url crawling
    :param url: 요청받을 url
    :param params: key
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

def protect_url1_to_urllist(url, page_range):
    '''
    동물보호관리시스템 유기동물 공고에서 page range만큼 url crawling
    :param url: Crawling할 첫 page
    :param page_range: 페이지 범위
    :return: Scraping 해야 할 url list
    '''
    print('-' * 10, ' protect_url1 Crawling start  ', '-' * 10)
    urllist = []
    for page in page_range:
        resp = download(url=url, params={'page': page}, method='GET')
        [urllist.append(url.replace('list', 'view') + '?' + _) for _ in
         re.findall(r'na_open_window\(\'win\', \'abandonment_view_api.php\?([^\"]+)', resp.text)]

    print('-' * 10, ' protect_url1 Crawling end  ', '-' * 10)
    return urllist
def protect_url1_scraping(urllist):
    '''
    image & 필요한 정보 scraping
    :param urllist: Scraping 할 urllist
    :return: dict 형태의 data
    '''
    print('-' * 10, ' protect_url1 Scraping start  ', '-' * 10)

    result = []

    for url in urllist:
        data = dict()
        resp = download(url=url, method='GET')
        dom = BeautifulSoup(resp.text, 'lxml')
        tmp = dom.select('table.viewTable th, table.viewTable td')
        tmp = tmp[1:21] + tmp[-15:3]

        for i in range(0, len(tmp), 2):
            data[tmp[i].text.strip()] = tmp[i + 1].text.strip()
        data['image'] = dom.select_one('img')['src']

        result.append(data)

    print('-' * 10, ' protect_url1 Scraping end  ', '-' * 10)
    return result
def protect_url1(page):
    '''
    동물보호관리시스템 유기동물 공고의 데이터 수집
    :param page: 원하는 페이지 수
    :return:
    '''
    # 동물보호관리시스템 유기동물 공고
    protect_url1 = 'http://www.zooseyo.or.kr/Yu_abandon/abandonment_list_api.php'
    page_range = range(page)

    # url crawling
    protect_url1_list = protect_url1_to_urllist(protect_url1, page_range)
    #     print([print(_) for _ in protect_url1_list])

    # urllist scraping
    protect_url1_result = protect_url1_scraping(protect_url1_list)

    # protect_url1_result to DB
    print('protect_url1에서 가지고 온 data 갯수 : ', len(protect_url1_result))
    # print([print(_) for _ in protect_url1_result])

def protect_url2_find_no(dom):
    '''
    동물보호관리시스템 유기동물 공고에 가장 최근에 올라온 게시글의 'no' 찾는 함수
    :param dom: 
    :return: 최근 게시글 번호
    '''
    # find link
    urllist = dom.select('a')
    # find 최근 no
    for _ in urllist:
        if re.findall(r'no=([0-9]+)', _['href']):
            no = int(re.findall(r'no=([0-9]+)', _['href'])[0])
            break
            
    return no
def protect_url2_scraping(no, n):
    '''
    최근 게시물부터 n개 scraping
    :param no: 최근 게시물 number
    :param n: 수집할 데이터 수
    :return: dict 형태의 data
    '''
    # no부터 n번 돌면서 각 정보 Scraping
    result = []
    url = 'http://www.zooseyo.or.kr/Yu_board/petcare_view.html'
    for num in range(no, no - n, -1):
        resp = download(url=url, params={'no': num}, method='GET')
        dom = BeautifulSoup(resp.text, 'html.parser')

        data = dict()
        # 찾은 동물은 pass
        if not re.findall(r'pet_find_phoneblind_img', resp.text):
            text = dom.select('td')[63].text.split()

            # print(text)
            name, date, phone_num, sex, address = text[0], text[1], text[2], text[3], text[4] + ' ' + text[5]

            image = ['http://www.zooseyo.or.kr' + _ for _ in
                     set(re.findall(r'\/pet_care\/photo\/[0-9_]+.jpe?g', resp.text))]
            # print('{}, {}, {}, {}, {}, {}, {}'.format(num, name, date, phone_num, sex, address, image))

            data['no'] = num
            data['name'] = name
            data['date'] = date
            data['phone_num'] = phone_num
            data['sex'] = sex
            data['address'] = address
            data['image'] = image
            result.append(data)

    return result
def protect_url2(n):
    '''
    유기견보호센터 유기동물 보호중의 데이터 수집
    :param n: 수집할 데이터 수
    :return:
    '''
    print('-' * 10, ' protect_url2 Crawling start ', '-' * 10)
    # 유기견보호센터 유기동물 보호중
    protect_url2 = 'http://www.zooseyo.or.kr/Yu_board/petcare.html'

    resp = download(url=protect_url2,params={'page': 1}, method='GET')
    dom = BeautifulSoup(resp.text, 'html.parser')

    # find 최근 게시글 no
    no = protect_url2_find_no(dom)

    # 최근 게시글부터 n개 Scraping
    protect_url2_result = protect_url2_scraping(no, n)

    print('-' * 10, ' protect_url2 Crawling end ', '-' * 10)
    # to DB
    print('protect_url2에서 가지고 온 data 갯수 : ', len(protect_url2_result))

if __name__ == '__main__':
    #     robot = RobotFileParser()

    # '동물보호관리시스템 유기동물 공고' url의 데이터 수집
    protect_url1(page = 3)

    # '유기견보호센터 유기동물 보호중' url의 데이터 수집
    protect_url2(30)