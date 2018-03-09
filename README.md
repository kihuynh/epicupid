<!--Your documentation is complete when someone can use your module without ever having to look at its code. This is very important. This makes it possible for you to separate your module's documented interface from its internal implementation (guts). This is good because it means that you are free to change the module's internals as long as the interface remains the same.

Remember: the documentation, not the code, defines what a module does. -- Ken Williams-->

# Epicupid

#### Week 5 Group Project, 3/8/2018

#### By [Katie Fujihara](https://github.com/KaitlynFujihara), [Roger Yee](https://github.com/ryee926), [Alex Ficklin](https://github.com/AlexFicklin), [Kimberly Huynh](https://github.com/kihuynh)

## Description

A ruby application that allows the user to find their perfect coding pair. This application will get rid of the stress and anxiety of asking someone to be your partner for the day. With EpiCupid, we will use your survey answers to find your strengths and weaknesses and assign you with your perfect match.

![alt text](https://i.imgur.com/WYz2oWa.jpg)
![alt text](https://i.imgur.com/Z45RmKZ.jpg)
![alt text](https://i.imgur.com/aVK95Rv.png)
## Setup/Installation Requirements
Open Terminal <br/>
Clone on your local machine, run the following in the Terminal
```
$ git clone https://github.com/KaitlynFujihara/epicupid_2.0.git
```
In Terminal, navigate to the root directory of the project and run:
Run Postgres in Terminal <br>
(if local machine doesn't run it on startup):
```
$ postgres
```
Install gems, create database:
```
$ bundle install
$ rake db:create
$ rake db:migrate
$ ruby app.rb
```

Open your browser and go to localhost:4567

## Technologies Used

* Ruby
* Gems
* Sinatra
* Postgres

## License

*Licensed under MIT license*

Copyright (c) 2018 **_Katie Fujihara, Roger Yee, Alex Ficklin, Kimberly Huynh_**
