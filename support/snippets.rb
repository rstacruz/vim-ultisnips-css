class Snippets
  def initialize(snips)
    @snips = snips
  end

  def to_s(format)
    out = []

    if format == :scss
      out << 'extend css'
    end

    unless format == :scss
      out += @snips['simple'].map do |key, val|
        block \
          name: key,
          desc: to_desc(val),
          snip: reformat(val, format)
      end
    end

    unless format == :scss
      out += @snips['expressions'].map do |key, val|
        block \
          name: key,
          desc: to_desc(val),
          snip: unplaceholder(val)
      end
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

    unless format == :scss
      out += @snips['media'].map do |key, val|
        block \
          name: key,
          desc: val,
          snip: (bracketed?(format) ? val.gsub(') ', ') { ') : val)
      end
    end

    unless format == :scss
      out += @snips['css3'].map do |key, val|
        block \
          name: key,
          desc: to_desc(val),
          snip: reformat(val, format, mixin: true)
      end
    end

    out.join("\n\n") + "\n"
  end

private

  # Use brackets?
  def bracketed?(format)
    ! indented?(format)
  end

  def indented?(format)
    format == :sass || format == :stylus
  end

  # "border: {solid 1px #333}" => "border: ___"
  def to_desc(snippet)
    snippet.gsub(/\{(.*?)\}/, '___')
  end

  # "{url()}" => "${1:url()}
  def unplaceholder(snippet)
    i = 0
    snippet.gsub(/\{(.*?)\}/) { |placeholder| "${#{i += 1}:#{placeholder[1...-1]}}" }
  end

  # Turns a raw snippet into a snippet of a given format
  # "border-top: 0" => "border-top: 0;"
  def reformat(value, format, options={})
    snippet = value.dup

    snippet.gsub!(/; /, "\n")
    snippet = unplaceholder(snippet)
    if options[:mixin]
      if format == :sass
        snippet.gsub!(/^(.*?): (.*?)$/, "+\\1(\\2)")
      elsif format == :scss
        snippet.gsub!(/^(.*?): (.*?)$/, "@include \\1(\\2)")
      end
    end

    snippet.gsub!(/$/, ';')  if bracketed?(format)

    snippet
  end

  # Formats a block
  #
  #     block(name: "bt0", desc: "border-top", snip: "border-top: 0")
  #     # snippet bt0 "border-top"
  #     # border-top: 0
  #     # endsnippet
  #
  def block(options)
    [
      %[snippet #{options[:name]} "#{options[:desc]}"],
      options[:snip],
      "endsnippet"
    ].join("\n")
  end
end
