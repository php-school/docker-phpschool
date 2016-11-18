
<p align="center">
  <a href="https://www.phpschool.io/">
    <img alt="PHPSchool.io" src="https://avatars1.githubusercontent.com/u/14904751?v=3&s=200">
  </a>
  <br>
  <img src="https://travis-ci.org/php-school/docker-phpschool.svg?branch=master" alt="Travis CI">
</p>

# Getting Started

This process will provide you with a Docker environment where you can quickly run PHP School Workshops. We've gone ahead and pre-installed a few for you such as `learnyouphp`!

Once you get it up and running you should complete your tasks inside the `code` directory and use an editor such as [Atom](https://atom.io/) to write them.

Everything in the `code` directory will be mounted inside the Docker container at `/phpschool/code` so you can navigate there using the `cd` command and verify your solutions!

For example if your working on the Learn You PHP workshop you may do your first exercise `Hello World` inside a `learnyouphp` directory. Your verification process would be something like this.

```bash
cd code/learnyouphp

learnyouphp verify hello-world.php
```

## Docker Installation

Head on over to [Docker](https://www.docker.com/products/docker) and download the latest version for your OS.

Older Windows users running less than `Windows 10 Professional or Enterprise 64bit Build 10586` will need to also follow the Special Windows Instructions throughout this process.

#### Special Windows Instructions...

Older Windows users will require [Docker Toolbox](https://www.docker.com/products/docker-toolbox) instead.

You will also need a better terminal capable of handling ANSI escape sequences, we recommend [ConEmu](https://github.com/Maximus5/ConEmu/releases)

## Downloading the Docker Image

We recommend pulling this project down for the easiest way of getting started.

You can do this in two different ways, either with `git` or manual download.

With `git` just run

```bash
git clone git@github.com:php-school/docker-phpschool.git && cd docker-phpschool
```

Alternatively you can [download the files directly](https://github.com/php-school/docker-phpschool/archive/master.zip) and unzip them manually or run the command below to do it all in one.

```bash
curl -LOk https://github.com/php-school/docker-phpschool/archive/master.zip && unzip master.zip && cd docker-phpschool-master
```

## Starting the Docker Image

Ensure you're in your terminal and have navigated to the directory of the files you just pulled down using the `cd` command. If you ran one of the download commands above then you're already there otherwise if you manually downloaded the files and unzipped them you will need to run the command below replacing `<path/to/download/folder>` with the download path for your OS.

```bash
cd <path/to/download/folder>/docker-phpschool-master
```

#### Special Windows Instructions...

To use Docker with ConEmu you will need to configure the environment correctly, this is done in the startup tasks inside the settings menu. As you've installed Docker it should provide that as a predefined task, which you will need to set as the default task for new consoles as shown in the screenshot below. This simply ensures new consoles boot with the correct environment for working with Docker :tada:

![ConEmu Example](https://cloud.githubusercontent.com/assets/2174476/19818040/f702e730-9d45-11e6-8514-b0f7801d0f08.png)

You will also likely need to have the container up and running before you can interact with it using Docker (not Docker Compose) as Docker Compose does not yet support interactive commands :disappointed:

To do this simply remember to run `docker-compose up -d` before trying to interact with the workshops.

## Starting a Workshop

We've pre-installed a few Workshops for you and you can install more using the [Workshop Manager](https://github.com/php-school/workshop-manager) which is also pre-installed.

To start a workshop you will need to interact directly with the Docker container, you should do this with the command below depending on your system

- Unix: `docker-compose run phpschool bash`
- Windows: `docker exec -it phpschool bash`

_Note: The Windows command above is for those who had to run `docker-compose up -d` beforehand_

This will put you inside a new bash prompt interacting directly with the PHP School Docker container, from this point forwards you can start your interactive learning by running one of the pre-installed workshops e.g.

```bash
learnyouphp
```

---

## Docker Power Users

Anyone familiar with Docker may wonder why we went through this process and maybe more inclined to run it directly in one command. Well here you go :smile:

```bash
  docker run -itv <local-dir>:/phpschool/code:rw -e "PATH=/root/.php-school/bin:$PATH" phpschool/phpschool bash
```

Replace `<local-dir>` with a the directory you wish to complete your workshops in.

The source is built and pushed to Docker Hub automatically and will thus always be up to date with this repository.

### Building the Image

Using Docker Compose you can build the image, this will include any modifications you make to your local Dockerfile.

```bash
docker-compose build phpschool
```

---

# Contributions

Thanks to our [contributors](https://github.com/php-school/docker-phpschool/graphs/contributors) for making this so easy!

We're always open to contributions. If you think you've spotted a bug or can help improve this process please open an issue or submit a PR :heart:
