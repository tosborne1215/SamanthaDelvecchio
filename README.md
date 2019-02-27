# How do I run this
Prerequisites:
Pretty sure you just need docker and docker-compose

Steps:
1. Download this repo, unpack it if needed, move to the directory where you unpacked it.
2. run `docker-compose -f docker-compose.dev.yml up`
3. Open this in a browser http://localhost:8080/

# How do I make small content changesl.
First, you need to be using git. You can find all kinds of free tools that will help with git or run the command line too
1. The name doesnt matter but you need to use the same name in the subsequent commands `git branch <smallnameofchanges>`
2. `git checkout <smallnameofchanges>`
3. Make Changes like adding files or changing text.
4. This is like saving `git commit -am "A description of changes."`
5. This sends the change to github. `git push origin <smallnameofchanges>`

# Where is the content?
- Images and other static files are here: /webapp/app/static
- The html templates are located here: /webapp/app/templates

