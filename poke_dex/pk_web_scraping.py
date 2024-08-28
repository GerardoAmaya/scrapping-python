from urllib.request import urlopen

url = "http://olympus.realpython.org/profiles/aphrodite"

page = urlopen(url)

html_bytes = page.read()
html = html_bytes.decode("utf-8")

print(html)

''''
Because .find() returns the index of the first occurrence of a 
substring, you can get the index of the opening <title> tag by 
passing the string "<title>" to .find():
''''

title_index = html.find("<title>")
title_index

''''
You don’t want the index of the <title> tag, though. You want 
the index of the title itself. To get the index of the first 
letter in the title, you can add the length of the string "<title>" to title_index:
''''

start_index = title_index + len("<title>")
start_index

''''
Now get the index of the closing </title> tag by passing 
the string "</title>" to .find():
''''

end_index = html.find("</title>")
end_index

''''
Finally, you can extract the title by slicing the html string:
''''

title = html[start_index:end_index]
title


url = "http://olympus.realpython.org/profiles/poseidon"
page = urlopen(url)
html = page.read().decode("utf-8")
start_index = html.find("<title>") + len("<title>")
end_index = html.find("</title>")
title = html[start_index:end_index]
title = re.sub("<.*?>", "", title) # Remove HTML tags
title

# regex_soup.py

import re
from urllib.request import urlopen

url = "http://olympus.realpython.org/profiles/dionysus"
page = urlopen(url)
html = page.read().decode("utf-8")

pattern = "<title.*?>.*?</title.*?>"
match_results = re.search(pattern, html, re.IGNORECASE)
title = match_results.group()
title = re.sub("<.*?>", "", title) # Remove HTML tags

print(title)


# beauty_soup.py

from bs4 import BeautifulSoup
from urllib.request import urlopen

url = "http://olympus.realpython.org/profiles/dionysus"
page = urlopen(url)
html = page.read().decode("utf-8")
soup = BeautifulSoup(html, "html.parser")

img = soup.find_all("img")
img[0]["src"]

soup.title.string