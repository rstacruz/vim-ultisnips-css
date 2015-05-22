require File.expand_path('../support/snippets', __FILE__)

task :default => :build

desc "Make the sass/scss snippets"

task :build do
  require 'yaml'
  data = YAML::load_file('snips.yml')
  snips = Snippets.new(data)

  [:css, :sass, :scss, :stylus].each do |format|
    fn = "UltiSnips/#{format}.snippets"
    puts fn
    File.open(fn, 'w') { |f| f.write snips.to_s(format) }
  end
end
