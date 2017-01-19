#import the library used to query a website
import urllib2
from bs4 import BeautifulSoup
import mysqlConnector

urlList = ["http://jayantkeswani.com"]

def Scrapper(urlList):
    conn = mysqlConnector.Connection()

    for urlName in urlList:
        #specify the url
        address = urlName

        #Query the website and return the html to the variable 'page'
        page = urllib2.urlopen(address)
        print ("Webpage: "+urlName+" is parsed")

        #Parse the html in the 'page' variable, and store it in Beautiful Soup format
        soup = BeautifulSoup(page, "lxml")

        # conn.is_connected()
        url = str(urlName)
        title = str(soup.title)
        data = str(soup.p)

        query = "INSERT INTO websites(url,title,data) VALUES(%s,%s,%s)"

        args = (url,title, data,)
        cursor = conn.cursor()
        cursor.execute(query, args)
        conn.commit()
        print ("Data was inserted into the table")


if __name__ == '__main__':
    Scrapper(urlList)


