# Newfangled Me

This is the source code of my blog, [Newfangled Me](http://newfangled.me).

It is written in Ruby using Jekyll, using the "So Simple" theme.

New posts are added into the _posts directory.

Because GitHub pages does not allow the plugins that I use in the _plugins directory, I need to build the project before pushing it up. As such, I have two seperate repositories.

`newfangled-me` stores the uncompiled source code, and `alfo.github.io` contains the compiled HTML files.

This is the bash function (put in my `.bash_profile`) that builds the blog.

    function build_blog() {
        cd ~/sites/newfangled.raw;
        jekyll build;
        cp -r ~/sites/newfangled.raw/_site/* ~/sites/newfangled;
        cd ~/sites/newfangled;
        git add .;
        git commit -am 'Latest build (see alfo/newfangled-me for details)'
        git push origin master;
    }