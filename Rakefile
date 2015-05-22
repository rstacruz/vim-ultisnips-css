require File.expand_path('../support/snippets', __FILE__)

task :default => [:build, :build_markdown]

task :env do
  require 'yaml'
  data = YAML::load_file('snips.yml')
  $snips = Snippets.new(data)
end

desc "Make the sass/scss snippets"
task :build => :env do
  [:css, :sass, :scss, :stylus].each do |format|
    fn = "UltiSnips/#{format}.snippets"
    puts fn
    File.open(fn, 'w') { |f| f.write $snips.to_s(format) }
  end
end

desc "Builds markdown reference"
task :build_markdown => :env do
  puts $snips.to_markdown
end
