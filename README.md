**SYNOPSIS**

Cuba application template for gn, the file generator.

**DESCRIPTION**

This template generates a very basic Cuba application layout based on @soveran's [App](https://github.com/soveran/app).
It's a starting point with a minimal set of dependencies. However, it makes the following decisions:

- Provides a defined set of directories (each has it's own README.md explaining it's porpose and providing examples)
- Provides a SQL management (if you are not intending to use SQL as persistence layer, you should change it by your self)
- Provides [Mote](https://github.com/soveran/mote) as the template engine (it can be changed later)
- Sticks with conventional CSS for styling (any additional tool could be added)

Make sure to read the information provided both in the plan and when running the generator.

**TARGET**

The target for this template is people aiming for a starting point, as is usually provided by bigger tools, to start using simpler ones.

**INSTALLATION**

    $ gn -i https://github.com/agpelliza/cuba_app

**USAGE**

    $ gn cuba_app

NOTE: Current [gn](http://github.com/lucasefe/gn) version doesn't work for this template, for now this [fork](https://github.com/agpelliza/gn) is required.

**SEE ALSO**

http://github.com/lucasefe/gn
