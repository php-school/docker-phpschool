
<p align="center">
  <a href="https://www.phpschool.io/">
    <img alt="PHPSchool.io" src="https://avatars1.githubusercontent.com/u/14904751?v=3&s=200">
  </a>
</p>

# Docker Image
    
**1. Run a container with PHPSchool.**
  
<<<<<<< HEAD
```bash

  docker run -i -t -v ~/Dropbox/docker-phpschool:/phpschool/code:rw -e "PATH=/root/.php-school/bin:$PATH" rafaelcgstz/phpschool bash

```

**2. To verify your code.** 
	
In the docker container, navigate to `/phpschool` folder.

```bash
=======
    
    docker run -i -t -v /<DIRECTORY-YOUR-MACHINE>:/phpschool/code:rw rafaelcgstz/phpschool bash
    

**2. To verify your code.** 
	
    In the docker container - navigate to /phpschool

    learnyouphp verify <name-of-solution-file>
>>>>>>> c79c05424f4f5e2ee2232e6e4196fd18c0c17565

  learnyouphp verify <name-of-solution-file>

```
    
    
<<<<<<< HEAD
**3. Advanced**

This creates a docker container with the `learnyouphp`, `Callablefunctions` workshops and the `workshop-manager`.

```bash

  docker build -t phpschool .  

```
This runs the phpschool in interactive mode from the included compose file 

```bash
   docker-compose run phpschool
```


Contributions welcome.
=======
# Advanced 

This creates a docker container with the learnyouphp, callable-functions workshops and the workshop manager.


    docker build -t phpschool .
    
    
# docker-compose.yml (example)   

This creates the docker container with the learnyouphp, callable-functions workshops and the workshop manager. Create the docker-compose.yml file in your project dir and run "docker-compose up -d".
    
    version: '2'
      services:
        phpschool:
      build: ./
      volumes:
        - /path/to/phpSchool/projectfiles:/phpschool/projectfiles:rw
      #restart: always
      environment:
        - TERM=xterm
      command: tail -f /dev/null
   
# Contributions welcome!    
>>>>>>> c79c05424f4f5e2ee2232e6e4196fd18c0c17565
