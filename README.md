# fortune
I love having [FORTUNE(6)](https://www.freebsd.org/cgi/man.cgi?query=fortune&sektion=6&manpath=FreeBSD+6.4-RELEASE) run on my login-shell and configuring cookies myself. I cannot find a non-personal collection of topic-specific fortune cookies. So here it is.

# install fortune

#### on macOS  
* Install [homebrew](https://brew.sh/) if you don't have it already.
* Run `brew install fortune` in Terminal.
#### on Debian/Ubuntu
* `apt-get install fortune`

# download
Clone repository, then run the `setup_custom_fortunes.sh` script. To remove custom fortunes of your choice simply delete the files from `custom_fortunes`.
You might have to create the directory /usr/local/share/games/fortunes.

The script has been tested on
* macOS
* ubuntu

# contributing
The point of this repo is for people to contribute. Add fitting quotes to a file of your choosing or create your own file. Add source when fitting. Fortune is meant to print "a random, hopefully interesting, adage" - (adage := a proverb or short statement expressing a general truth.)

* *Let's keep the quality*: Only add quotes / other adages that you personally like, find inspiring or funny.
* All topics should have an own file named [directory]-topic. Please don't include "-" in the file name otherwise

Let's see what abstruse subtopics the internet will find.
Quotes are separated by %.
See https://wiki.archlinux.org/index.php/Fortune#Creating_custom_files

#### Docker container testing changes to the project (not required for use)
There is a [Dockerfile](https://docs.docker.com/engine/reference/builder/) in the repository that will assemble a lightweight Docker image with the latest version of Ubuntu, `fortune`, as well as a copy of the repository. This will allow you to run the project within a Docker container instead of your local computer, keeping your `fortune` setup separated from changes to the project that you may wish to test first.

To use this isolated test environment:
* Make your changes to the `custom_fortunes` directory or the `setup_custom_fortunes.sh` script.
* Install [Docker](https://docs.docker.com/v17.09/engine/installation/#supported-platforms) for your operating system (Available for Linux, Mac, Windows)
* Run `docker build -t ubuntu_fortune:latest .`
* Run `docker run -it ubuntu_fortune:latest /bin/bash`
  * At this point, you should be inside the test environment in a directory called `/fortune`.  The prompt will look something like this: 
  ```
  root@0be2c9cb3117:/fortune# ls
  custom_fortunes  setup_custom_fortunes.sh
  ```
* Run `./setup_custom_fortunes.sh` to set up the custom fortunes on the host.
* Test and confirm any changes that you'd like
* When finished, type `exit` at the prompt to return to your local terminal.

# topics
Collection of fortune cookies to any imaginable topic, sorted in directories. Every directory has a [directory]-all. This is not meant to collect all subtopics, but as a file for all things that do not fit in a subtopic
## films
* [lordoftherings](https://en.wikipedia.org/wiki/The_Lord_of_the_Rings)
* [harrypotter](https://en.wikipedia.org/wiki/Harry_Potter)
## music
* [joco](https://en.wikipedia.org/wiki/Jonathan_Coulton)
## games
* [kingdomofloathing](https://en.wikipedia.org/wiki/Kingdom_of_Loathing)
* [deponia](https://en.wikipedia.org/wiki/Deponia_(video_game))
* [portal](https://en.wikipedia.org/wiki/Portal_(video_game))
## literature
* [haiku](https://en.wikipedia.org/wiki/Haiku)
* [shakespeare](https://en.wikipedia.org/wiki/William_Shakespeare)
## science

## society
* [feminism](https://en.wikipedia.org/wiki/Feminism)
* [lgbtq](https://en.wikipedia.org/wiki/LGBT)
## television
* [lost](https://en.wikipedia.org/wiki/Lost_(TV_series))

## computer
* networking
## motivation
* shia_labeouf
* habits

...
... add more
