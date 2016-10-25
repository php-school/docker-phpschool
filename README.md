
<p align="center">
  <a href="https://www.phpschool.io/">
    <img alt="PHPSchool.io" src="https://avatars1.githubusercontent.com/u/14904751?v=3&s=200">
  </a>
</p>

# Docker Image
    
**1. Run a container with PHPSchool.**
  
```bash

  docker run -i -t -v <DIRECTORY-YOUR-MACHINE>:/phpschool/code:rw rafaelcgstz/phpschool bash

```

**2. To verify your code.** 
	
In the docker container, navigate to `/phpschool` folder.

```bash

  learnyouphp verify <name-of-solution-file>

```
    
    
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
