# CLI.K

[Website](http://rubyworks.github.com/clik) /
[Report Issue](http://github.com/rubyworks/clik/issues) /
[Source Code](http://github.com/rubyworks/clik)


## About

CLI.K stands for Command Line Interface in the Kernel. It provides a very 
simple `cli` method for parsing command line options.


## Usage

### They call it "K.I.S.S."

Usage is very straightforward, although it might look a little odd at first
glance:

```ruby
  require 'clik'

  cli '-w'         => ->{ whatever = true },
      '--whatever' => ->{ whatever = true },
      '-f'         => ->{ |f| file = f },
      '-h'         => ->{ show_help }
```

There's very liitle to it really. The `cli` command simply maps command
line options to procedures which are used to process them. That's it.

We have to give credit where credit is due. This interface is the great 
achievement of .... He deserives high praise for this design. Its not easy
to realize this level of simplicity is all one really needs!

In our example, notice that although `-w` and `--whatever` do the same thing,
they are defined separately. Simple. Then notice that that `-f` option's
procedure takes an argument, so the command line option takes an argument 
as well. Again simple.

The cli method has a few additonal niceities. It can handle run-on flags, i.e.
`-abc` is the same as `-a -b -c`.

### You need help, no you really don't

At this point, you might be wonder about help output. Clearly there are
no descriptions given in our example. Well, guess what! It's really easy
to print something out yourself. In fact, if you really want to *do it right*,
create a manpage with [ronn]() or [md2man](), and impress your friends. It's
a much better approach then jamming all that verbage into you command line
options parser code.

### Ask and you shell receive

In addition to `cli` CLI.K include the `ask` method. This is a very simple
command line query method.

  ans = ask "Are you nice? [Y/N]"

Other Ruby programs have there own ask methods, and can just as soon override
this very simple one, no big deal. But it's nice to have for simple use cases.


## Acknowledgements

Many thanks are in order to Michel Martens and his Clap library, who (AFAIK)
pioneered the simple and elegant approach to option parsing.


## Copyrights & License

CLI.K is copyrighted open-source software.

  Copyright (c) 2013 Rubyworks

CLI.K is base on Michel Marten's Clap library.

  Copyright (c) 2010 Michel Martens

See LICENSE.txt and NOTICE.txt files for details.
