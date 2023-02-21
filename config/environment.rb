# Load the Rails application.
require File.expand_path("../application", __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

if ENV["BOOT_PROFILE"]
  StackProf.stop
  Rails.root.join("tmp/flamegraph").mkpath
  profile = Rails.root.join("tmp/flamegraph/boot.#{Rails.env}.dump")
  profile.write(JSON.generate(StackProf.results))
  system("yarn speedscope #{profile}")
end
