require "digest/sha1"
require "base64"
require "date"

module Plan
  class App

    # Name of your project.
    def name
      "foo"
    end

    # List of dependencies. This list is a starting point, and you can
    # add more either now or later. For each gem, we'll include the
    # latest version in the final .gems manifest. Feel free to change
    # it at will.
    def gems
      [
        "cuba", # Required.
        "mote", # Required, but you can change it later.
        "cuba-contrib", # Optional, provides some nice helpers.
        "rack-protection", # Optional, but recommended.
        "shield", # Optional, helpers for authentication.
        "sqlite3", # Required, but you can change it later.
        "sequel" # Required, but you can change it later.
      ]
    end

    def destination
      "#{name}/app.rb"
    end
  end

  class Readme < App
    def destination
      "#{name}/README.md"
    end
  end

  class Makefile < App
    def destination
      "#{name}/makefile"
    end
  end

  class Gitignore < App
    def destination
      "#{name}/.gitignore"
    end
  end

  class Config < App
    def destination
      "#{name}/config.ru"
    end
  end

  module Public
    class Css < App
      def destination
        "#{name}/public/css/styles.css"
      end
    end
  end

  module Views
    class Readme < App
      def destination
        "#{name}/views/README.md"
      end
    end

    class Layout < App
      def destination
        "#{name}/views/layout.mote"
      end
    end

    class Header < App
      def destination
        "#{name}/views/header.mote"
      end
    end

    class Home < App
      def destination
        "#{name}/views/home.mote"
      end
    end

    class Footer < App
      def destination
        "#{name}/views/footer.mote"
      end
    end
  end

  module Models
    class Readme < App
      def destination
        "#{name}/models/README.md"
      end
    end
  end

  module Routes
    class Readme < App
      def destination
        "#{name}/routes/README.md"
      end
    end
  end

  module Helpers
    class Readme < App
      def destination
        "#{name}/helpers/README.md"
      end
    end
  end

  module Filters
    class Readme < App
      def destination
        "#{name}/filters/README.md"
      end
    end
  end

  module Tests
    class Readme < App
      def destination
        "#{name}/tests/README.md"
      end
    end

    class Helper < App
      def destination
        "#{name}/tests/helper.mote"
      end
    end
  end
end

instructions = <<-EOS
You have just created a Cuba application. Now, go ahead and install
the dependencies with the following commands:

$ cd #{Plan::App.new.name}
$ make gems # Creates a gemset and lists dependencies.
$ make install # Installs dependencies

Once you are done with the setup, run the webserver:

$ rackup

Now you can head to http://localhost:9292.

In development mode, it is good to have your application code
reloaded between requests. For that, we recommend the use of the
shotgun gem:

$ gem install shotgun
$ shotgun

Both shotgun and rackup use webrick by default. While it's a nice
server, you may get faster responses with something like puma:

$ gem install puma
$ shotgun -s puma

Now head to http://localhost:9393 to check your creation. Enjoy!
EOS

puts instructions
puts