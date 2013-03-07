# CLI.K

CLI.K provides a kernel method.

    opts = {}
    argv = ['-x']

    cli argv,
      '-x' => lambda{ opts[:x] = true }

    opts[:x].assert === true

Another example,

    opts = {}
    argv = ['-w', '-f', 'hello']

    cli argv,
      '-w --whatever' => ->{ opts[:w] = true },
      '-f --file'     => ->(f){ opts[:f] = f },
      '-h --help'     => ->{ puts "help" }

    opts[:w].assert == true
    opts[:f].assert == 'hello'

