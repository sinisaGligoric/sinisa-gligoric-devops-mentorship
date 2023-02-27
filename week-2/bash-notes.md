# week-2-bandit-labs
## Notes below are captured during solving tasks from [OverTheWire - Wargames](https://overthewire.org/wargames) on Bandit levels 0 to 10.

---------------------------------

### Level 0
ssh -p 2220 bandit0@bandit.labs.overthewire.org *#konekcija na server putem SSH-a protokola i porta 2220*

![Level_0](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-2-bandit-labs/week-2/screenshots/Level_0.png?raw=true)

----------------------------------
### Level 1
ssh -p 2220 bandit0@bandit.labs.overthewire.org *#konekcija na server putem SSH-a protokola i porta 2220*

pwd *#direktorij u kojem se nalazim*

ls -lh *#izlistaj sve fajlove -l long listing -h human-readable*

cat readme *#prikazi u konzoli sadrzaj fajla readme*

![Level_1](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-2-bandit-labs/week-2/screenshots/Level_1.png?raw=true)

----------------------------------

### Level 2
ssh -p 2220 bandit1@bandit.labs.overthewire.org *#konekcija na server putem SSH-a protokola i porta 2220*

pwd *#direktorij u kojem se nalazim*

ls -lh *#izlistaj sve fajlove -l long listing -h human-readable*

cat ./- *#prikazi u konzoli sadrzaj fajla -*

![Level_2](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-2-bandit-labs/week-2/screenshots/Level_2.png?raw=true)

-----------------------------------

### Level 3
ssh -p 2220 bandit2@bandit.labs.overthewire.org *#konekcija na server putem SSH-a protokola i porta 2220*

pwd *#direktorij u kojem se nalazim*

ls -lh *#izlistaj sve fajlove -l long listing -h human-readable*

cat spaces\ in\ this\ filename *#prikazi u konzoli sadrzaj fajla 'spaces in this filename'*

![Level_3](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-2-bandit-labs/week-2/screenshots/Level_3.png?raw=true)

-----------------------------------

### Level 4
ssh -p 2220 bandit3@bandit.labs.overthewire.org *#konekcija na server putem SSH-a protokola i porta 2220*

pwd *#direktorij u kojem se nalazim*

ls -lah *#izlistaj sve fajlove -l long listing -h human-readable -a hidden files*

cd inhere *#otvori inhere direktorij*

ls -lah *#izlistaj sve fajlove -l long listing -h human-readable -a hidden files*

cat .hidden *#prikazi u konzoli sadrzaj fajla .hidden*

![Level_4](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-2-bandit-labs/week-2/screenshots/Level_4.png?raw=true)

------------------------------------

### Level 5
ssh -p 2220 bandit4@bandit.labs.overthewire.org *#konekcija na server putem SSH-a protokola i porta 2220*

ls -lah *#izlistaj sve fajlove -l long listing -h human-readable -a hidden files*

cd inhere *#otvori inhere direktorij*

ls -lh *#izlistaj sve fajlove -l long listing -h human-readable*

cat ./-file00

cat ./-file01

cat ./-file02

cat ./-file03

cat ./-file04

cat ./-file05

cat ./-file06

cat ./-file07 *#prikazi u konzoli sadrzaj fajla -file07*

![Level_5](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-2-bandit-labs/week-2/screenshots/Level_5.png?raw=true)

---------------------------------

### Level 6
ssh -p 2220 bandit5@bandit.labs.overthewire.org *#konekcija na server putem SSH-a protokola i porta 2220*

pwd *#present working directory*

ls -lh *#izlistaj sve fajlove -l long listing -h human readable*

cd inhere *#otvori inhere direktorij*

ls -lh *#izlistaj sve fajlove -l long listing -h human readable*

find ./* -type f -size 1033c *#pronađi sve fajlove veličine 1033 bajta u svim direktorijima trenutnog direktorija 'inhere'*

![Level_6](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-2-bandit-labs/week-2/screenshots/Level_6.png?raw=true)

-------------------------------------

### Level 7
ssh -p 2220 bandit6@bandit.labs.overthewire.org *#konekcija na server putem SSH-a protokola i porta 2220*

pwd *#present working directory*

ls -lh *#izlistaj sve fajlove -l long listing -h human readable*

cd / *#vrati se na root directory*

find ./* -user bandit7 -group bandit6 -size 33c -type f *#pronadji sve fajlove korisnika bandit7, grupe bandit6, velicine 33 bajta*

cat ./var/lib/dpkg/info/bandit7.password *#prikazi sadrzaj fajla bandit7.password*

![Level_7](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-2-bandit-labs/week-2/screenshots/Level_7.png?raw=true)

-------------------------------------

### Level 8
ssh -p 2220 bandit7@bandit.labs.overthewire.org *#konekcija na server putem SSH-a protokola i porta 2220*

pwd *#present working directory*

ls -lh *#izlistaj sve fajlove -l long listing -h human readable*

grep -w 'millionth' data.txt *#pronađi riječ **millionth** u fajlu data.txt*

![Level_8](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-2-bandit-labs/week-2/screenshots/Level_8.png?raw=true)

---------------------------------------

### Level 9
ssh -p 2220 bandit8@bandit.labs.overthewire.org *#konekcija na server putem SSH-a protokola i porta 2220*

pwd *#present working directory*

ls -lh *#izlistaj sve fajlove -l long listing -h human readable*

sort data.txt | uniq -u *#sortiraj abecedno sadrzaj fajla data.txt te filtriraj samo jedinstvene redove tj. redove koji se ne ponavljaju*

![Level_9](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-2-bandit-labs/week-2/screenshots/Level_9.png?raw=true)

-------------------------------------

### Level 10
ssh -p 2220 bandit9@bandit.labs.overthewire.org *#konekcija na server putem SSH-a protokola i porta 2220*

pwd *#present working directory*

ls -lh *#izlistaj sve fajlove -l long listing -h human readable*

strings data.txt | grep '^==' *#putem strings komande filtriramo sve stringove iz izvršnih fajlova, te dalje putem grep komande pretražujemo sve stringove koji počinju sa '=='*

![Level_10](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-2-bandit-labs/week-2/screenshots/Level_10.png?raw=true)

----------------------------------------

### Level 11
ssh -p 2220 bandit10@bandit.labs.overthewire.org *#konekcija na server putem SSH-a protokola i porta 2220*

ls -lh *#izlistaj sve fajlove -l long listing -h human readable*

base64 --decode data.txt *#komandom base64 prosljedjujemo opciju --decode kako bi dekodovali fajl data.txt*

![Level_11](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-2-bandit-labs/week-2/screenshots/Level_11.png?raw=true)

-----------------------------------
## KRAJ
