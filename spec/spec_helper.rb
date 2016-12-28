RSpec.configure do |config|
  # Use color in STDOUT
  config.color = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation

  # Configure RSpec to accept only the new syntax
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
