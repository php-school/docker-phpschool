# Docker PHPSchool.io

![PHPSchool.io](https://avatars1.githubusercontent.com/u/14904751?v=3&s=200)



    
**1. Run a container with phpschool.**
  
    
    docker run -i -t -v /<DIRECTORY-YOUR-MACHINE>:/phpschool/code:rw rafaelcgstz/phpschool bash
    

**2. To verify your code.** 
	
    In the docker container - navigate to /phpschool

    learnyouphp verify <name-of-solution-file>

    
    
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
