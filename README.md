# Ocasta Coding Challenge

The challenge is written in [API Blueprint](http://apiblueprint.org/), in the `/spec.apib` file. The spec can be viewed at [challenge.ocasta.com](http://challenge.ocasta.com).

To compile the apib file into html:

        $ docker run -it --rm -v $PWD:/docs humangeo/aglio html -i spec.apib --theme-variables streak --theme-template triple -o spec.html
