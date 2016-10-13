# Docker PHPSchool.io

![PHPSchool.io](https://avatars1.githubusercontent.com/u/14904751?v=3&s=200)



    
**1. Run a container with phpschool.**
  
    
    docker run -i -t -v /<DIRECTORY-YOUR-MACHINE>:/phpschool/:rw rafaelcgstz/phpschool bash
    

**2. To verify your code.** 
	
	In the docker container - navigate to /phpschool

	learnyouphp verify <name-of-solution-file>

    
    
# Advanced 

This creates a docker container with the learnyouphp, Callable functions workshops and the workshop manager.

docker build -t phpschool .

Contributions welcome.
