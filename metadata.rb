name		  "metalknife"
maintainer        "Jackl0phty, LLC."
maintainer_email  "jackl0phty@gmail.com"
license           "Apache 2.0"
description       "A Ruby cmd-line tool that uses chef-metal for infrastructure provisioning."
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.0.1"
recipe            "default", "Deploys ~/.aws/config & /usr/local/bin/metalknife"
