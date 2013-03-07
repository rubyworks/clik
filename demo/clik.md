# CLI.K

CLI.K provides a kernel method.

    opts = {}
    argv = ['-x']

    cli argv,
      '-x' => lambda{ opts[:x] = true }

    opts[:x].assert === true


