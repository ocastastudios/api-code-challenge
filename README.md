# Ocasta API Code Challenge

The challenge site can be viewed at [challenge.ocasta.com](http://challenge.ocasta.com).

The site is written in [API Blueprint](http://apiblueprint.org/), see the `/spec.apib` file.

# Building & Deploying

To compile the apib file into html:

        $ docker run -it --rm -v $PWD:/docs humangeo/aglio html -i spec.apib --theme-variables streak --theme-template triple -o spec.html

The html file is deployed to and served from S3

