require File.expand_path('../support/snippets', __FILE__)

task :default => [:build, :update_readme]

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
task :update_readme => :env do
  fn = "README.md"
  puts fn
  out = $snips.to_markdown

  readme = File.read(fn)
  readme.gsub!(/(<!-- reference start -->\n).*(<!-- reference end -->)/m, "\\1#{out}\\2")
  File.write(fn, readme)
end
