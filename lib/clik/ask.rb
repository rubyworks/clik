module Kernel

  module_function

  # Very simple convenience method to get user input
  # via the console. A prompt will be sent to $stdout,
  # if given, and the input taken from $stdin...
  #
  #   ask "Are you happy? [Yn]", "Y"
  #
  # On the command line one would see...
  #
  #   Are you happy? [Yn]
  #
  # Responding...
  #
  #   Are you happy? [Yn] Y <ENTER>
  #
  # The ask method would return "Y".
  #
  # Returns [String]
  def ask(prompt=nil, default_answer=nil)
    $stdout << "#{prompt}"
    $stdout.flush
    ans = $stdin.gets.chomp!
    if ans == ''
      default_answer
    else
      ans
    end
  end
end

