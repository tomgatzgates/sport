RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.disable_monkey_patching!
  config.example_status_persistence_file_path = 'spec/examples.txt'
  config.mock_with :mocha
  config.warnings = false

  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  config.profile_examples = 10

  # https://github.com/rails/spring/issues/113
  config.seed = srand % 0xFFFF unless ARGV.any? { |arg| arg =~ /seed/ }
end
