# How do I run this
Prerequisites:
Pretty sure you just need docker and docker-compose and git
https://docs.docker.com/docker-for-windows/install/
https://git-scm.com/downloads


Steps:
1. Running this downloads the code `git clone https://github.com/tosborne1215/SamanthaDelvecchio.git`
2. run `docker-compose -f docker-compose.local.yml up`
3. Open this in a browser http://localhost:8080/

# How do I make small content changes?.
First, you need to be using git. You can find all kinds of free tools that will help with git or run the command line too
1. The name doesnt matter but you need to use the same name in the subsequent commands `git branch <smallnameofchanges>`
2. `git checkout <smallnameofchanges>`
3. Make Changes like adding files or changing text.
4. This is like saving `git commit -am "A description of changes."`
5. This sends the change to github. `git push origin <smallnameofchanges>`

# Where is the content?
Pretty much just look at /webapp/app/templates/index.html
If you need to include some css or js files put them between the curly braces at the top of the page. `{% block page_js %}` using html
- Images and other static files are here: /webapp/app/static
- The html templates are located here: /webapp/app/templates

