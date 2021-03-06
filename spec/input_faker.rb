class InputFaker
  def initialize(strings)
    @strings = strings
  end

  def gets
    next_string = @strings.shift
    puts "(DEBUG) Faking #gets with: #{next_string}"
    next_string
  end

  def self.with_fake_input(strings)
    $stdin = new(strings)
    yield
  ensure
    $stdin = STDIN
  end
end
