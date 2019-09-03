
# devbox-selenium

## Install

Open a command line in administrator mode

* Install Chocolatey
```
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

* Install Docker desktop
```
choco install docker-desktop
```

* Install vnc-viewer
```
choco install vnc-viewer
```

## Getting started

* Build and run the image
```
docker build -t yuc/selenium-chrome .
docker run -d -p 4444:4444 -p 5900:5900 --name selenium-chrome --shm-size=2g yuc/selenium-chrome
```

* Connect vnc-viewer to `127.0.0.1:5900`

* Experiment selenium testing with python3 interpreter
```
docker exec -it selenium-chrome /bin/bash

python3

>> from selenium import webdriver
>> from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

>> driver = webdriver.Chrome();

>> driver.get("https://www.google.com")

>> element = driver.find_element_by_xpath('//input[@name="q"])
>> element.send_keys("hello world from selemnium")
```
