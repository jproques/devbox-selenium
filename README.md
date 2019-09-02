

Install Chocolatey
```
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

Install Docker desktop
```
choco install docker-desktop
```

Build the image
```
docker build -t yuc/selenium-chrome .
```

Run the image
```
docker run -d -p 4444:4444 -p 5900:5900 --name selenium-chrome --shm-size=2g yuc/selenium-chrome
```

Connect to the image
```
docker exec -it selenium-chrome /bin/bash
```

Experiment selenium testing with python3 ...
```
python3

from selenium import webdriver
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

driver = webdriver.Chrome();

driver.get("https://www.google.com")
```