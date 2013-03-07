# CLI.K

[Website](http://rubyworks.github.com/clik) /
[Documentation](http://rubydoc.info/gems/clik/frames) /
[Report Issue](http://github.com/rubyworks/clik/issues) /
[Source Code](http://github.com/rubyworks/clik) &nbsp; &nbsp;
[![Build Status](https://travis-ci.org/rubyworks/clik.png)](https://travis-ci.org/rubyworks/clik)
[![Gem Version](https://badge.fury.io/rb/clik.png)](http://badge.fury.io/rb/clik)


## About

CLI.K stands for Command Line Interface in the Kernel. It provides a very 
simple `cli` method for parsing command line options.


## Usage

### They call it "K.I.S.S."

Usage is very straightforward, although it might look a little odd at first
glance:

```ruby
  require 'clik'

  cli '-w --whatever' => ->{ whatever = true },
      '-f --file'     => ->{ |f| file = f },
      '-h --help'     => ->{ show_help }
```

There's very liitle to it really. The `cli` command simply maps command
line options to procedures which are used to process them. That's it.

In our example, notice that `-w` and `--whatever` are easily defined as 
synonymous options. Simple. Then notice that the `-f/--file` option's
procedure takes an argument, so the command line option takes an argument 
as well. Again simple.

The cli method has a few additonal niceities. It can handle run-on flags,
i.e. `-abc` is the same as `-a -b -c`. And you can pass it an alternate
set of arguments to parse, as the first argument, to use something other 
than the default `ARGV`.

```ruby
  argv = ['--testing']
  cli argv,
    ...
```

### You need help, no you really don't

At this point, you might be wonder about help output. Clearly there are
no descriptions given in our example. Well, guess what! It's really easy
to print something out yourself. In fact, if you really want to *do it right*,
create a manpage with [ronn](git://github.com/rtomayko/ronn.git) or
[md2man](https://github.com/sunaku/md2man), and impress your friends.
It's a much better approach then jamming all that verbage into you command
line options parser code.

### Ask and you shell receive

In addition to `cli` CLI.K include the `ask` method. This is a very simple
command line query method.

  ans = ask "Are you nice? [Y/N]"

Other Ruby libraries have thier own take on the #ask method, and this very
simple implementation can just as soon be overridden. No biggy. But it's nice
to have for simple use cases.


## Acknowledgements

We have to give credit where credit is due. This interface is the great 
achievement of Michel Martens, who created the original [Clap](https://github.com/soveran/clap)
library from which CLI.K evolved. Mr. Martens deserives high praise for this
design. It's not easy to realize that this level of simplicity is all one
really needs! Thank you, Michel!


## Copyrights & License

CLI.K is copyrighted open-source software.

  Copyright (c) 2013 Rubyworks

CLI.K is base on Michel Marten's Clap library.

  Copyright (c) 2010 Michel Martens

See LICENSE.txt and NOTICE.txt files for details.
