
<p align="center">
  <a href="https://www.phpschool.io/">
    <img alt="PHPSchool.io" src="https://avatars1.githubusercontent.com/u/14904751?v=3&s=200">
  </a>
</p>

# Getting Started

This process will provide you with a Docker environment where you can quickly run PHP School Workshops. We've gone ahead and pre-installeda few for you such as `learnyouphp`!

Once you get it up and running complete your tasks inside the `code` directory and use an editor such as [Atom](https://atom.io/) to write them.

Everything in the `code` directory will be mounted inside the Docker container at `/phpschool/code` so you can navigate there using the `cd` command and verify your solutions!

## Docker Installation

Head on over to [Docker](https://www.docker.com/products/docker) and download the latest version for your OS.

#### Special Windows Instructions...

Older Windows users may require [Docker Toolbox](https://www.docker.com/products/docker-toolbox) instead.

You will also need a better terminal capable of handling ANSI escape sequences, we recommend [ConEmu](https://github.com/Maximus5/ConEmu/releases)

## Downloading the Docker Image

We recommend pulling this project down for the easiest way of getting started.

You can do this in two different ways, either with `git` or manual download.

With `git` just run `git clone git@github.com:php-school/docker-phpschool.git`

Alternatively you can [download the files directly](https://github.com/php-school/docker-phpschool/archive/master.zip) and unzip them.

## Starting the Docker Image

Ensure your in your terminal and navigated to the directory of the files you just pulled down using the `cd` command.

#### Special Windows Instructions...

Booting up ConEmu you will be able to configure the environment (startup tasks in the settings menu). With Docker installed it should provide that as a predefined task, you just need to make that the default task for new consoles.

![ConEmu Example](https://cloud.githubusercontent.com/assets/2174476/19818040/f702e730-9d45-11e6-8514-b0f7801d0f08.png)

You will also likely need to have the container up and running before you can interact with it using Docker (not Docker Compose) as Docker Compose does not yet support interactive commands :disappointed:

To do this simply remember to run `docker-compose up -d` before trying to interact with the workshops.

## Starting a Workshop

We've pre-installed a few Workshops for you and you can install more using the [Workshop Manager](https://github.com/php-school/workshop-manager) which is also pre-installed.

To start a workshop you will need to interact directly with the Docker container, you should do this with the command below depending on your system

Unix: `docker-compose run phpschool bash`
Windows: `docker exec -it phpschool bash`

_Note: This the Windows command above is for those who had to run `docker-compose up -d` beforehand_

This will put you inside a new bash prompt interacting directly with the PHP School Docker container.

---

## Docker Power Users

Anyone familiar with Docker may wonder why we went through this process and maybe more inclined to run it directly in one command. Well here you go :smile:

```bash
  docker run -itv <local-dir>:/phpschool/code:rw -e "PATH=/root/.php-school/bin:$PATH" phpschool/phpschool bash
```

Replace `<local-dir>` with a the directory you wish to complete your workshops in.

The source is built and pushed to Docker Hub automatically and will thus always be up to date with this repository.

### Building the Image

Using Docker Compose you can build the image running, this will include any modifications you make to your local Dockerfile.

```bash
docker-compose build phpschool
```

---

# Contributions

Thanks to our [contributors](https://github.com/php-school/docker-phpschool/graphs/contributors) for making this so easy!

We're always open to contributions. If you think you've spotted a bug or can help improve this process please open an issue or submit a PR :heart:
