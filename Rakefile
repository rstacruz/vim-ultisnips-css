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

class Snippets
  def initialize(snips)
    @snips = snips
  end

  def to_s(format)
    out = []

    out += @snips['simple'].map do |key, val|
      block \
        name: key,
        desc: to_desc(val),
        snip: to_snippet(val, format)
    end

    out += @snips['expressions'].map do |key, val|
      block \
        name: key,
        desc: to_desc(val),
        snip: unplaceholder(val)
    end

    if format == :sass || format == :scss
      out += @snips['sass-expressions'].map do |key, val|
        block \
          name: key,
          desc: to_desc(val),
          snip: unplaceholder(val)
      end
    end

    if format == :stylus
      out += @snips['stylus-expressions'].map do |key, val|
        block \
          name: key,
          desc: to_desc(val),
          snip: unplaceholder(val)
      end
    end

    out += @snips['media'].map do |key, val|
      block \
        name: key,
        desc: val,
        snip: (brackety?(format) ? val.gsub(') ', ') { ') : val)
    end

    out += @snips['css3'].map do |key, val|
      block \
        name: key,
        desc: to_desc(val),
        snip: to_snippet(val, format, true)
    end


    out.join("\n\n")
  end

private

  def brackety?(format)
    format == :css || format == :scss
  end

  def to_desc(snippet)
    snippet.gsub(/\{(.*?)\}/, '___')
  end

  def unplaceholder(snippet)
    i = 0
    snippet.gsub(/\{(.*?)\}/) { |placeholder| "${#{i += 1}:#{placeholder[1...-1]}}" }
  end

  # Turns a raw snippet into a snippet of a given format
  def to_snippet(value, format, mixinify=false)
    snippet = value.dup

    snippet.gsub!(/; /, "\n")
    snippet = unplaceholder(snippet)
    if mixinify
      if format == :sass
        snippet.gsub!(/^(.*?): (.*?)$/, "+\\1(\\2)")
      elsif format == :scss
        snippet.gsub!(/^(.*?): (.*?)$/, "@include \\1(\\2)")
      end
    end

    snippet.gsub!(/$/, ';')  if brackety?(format)

    snippet
  end

  # Formats a block
  def block(options)
    [
      "snippet #{options[:name]} \"#{options[:desc]}\"",
      options[:snip],
      "endsnippet"
    ].join("\n")
  end
end
