desc "Make the sass/scss snippets"
task :sass do
  str = File.read('UltiSnips/css.snippets')
  str.gsub!(/;/, '')
  str.gsub!(/ \{$/, '')
  str.gsub!(/^\}$/, '')
  str.gsub!('@include ', '+')

  puts "+ UltiSnips/sass.snippets"
  File.open('UltiSnips/sass.snippets', 'w') { |f| f.write str }
end
