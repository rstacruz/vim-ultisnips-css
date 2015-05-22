class Snippets
  def initialize(snips)
    @snips = snips
  end

  def to_s(format)
    out = []

    if format == :scss
      out << 'extend css'
    end

    @snips.each do |name, section|
      if section['formats'].include?(format.to_s)
        out += section['snippets'].map do |key, val|
          block \
            name: key,
            desc: to_desc(val),
            snip: reformat(val, format, section['options'] || {})
        end
      end
    end

    out.join("\n\n") + "\n"
  end

private

  # Use braces?
  def braced?(format)
    ! indented?(format)
  end

  def indented?(format)
    format == :sass || format == :stylus
  end

  def slash_comments?(format)
    format == :sass || format == :scss || format == :stylus
  end

  # "border: {solid 1px #333}" => "border: ___"
  def to_desc(snippet)
    snippet.gsub(/\{(.*?)\}/, '___')
  end

  # "{url()}" => "${1:url()}"
  def unplaceholder(snippet)
    i = 0
    snippet.gsub(/\{(.*?)\}/) { |placeholder| "${#{i += 1}:#{placeholder[1...-1]}}" }
  end

  # Turns a raw snippet into a snippet of a given format
  # "border-top: 0" => "border-top: 0;"
  def reformat(value, format, options={})
    snippet = value.dup

    # Line breaks
    snippet.gsub!(/; /, "\n")

    # Fix placeholders ("{url()}" => "${1:url()}"
    snippet = unplaceholder(snippet)

    # make them into mixins
    if options['mixin']
      if format == :sass
        snippet.gsub!(/^(.*?): (.*?)$/, "+\\1(\\2)")
      elsif format == :scss
        snippet.gsub!(/^(.*?): (.*?)$/, "@include \\1(\\2)")
      end
    end

    # Fix comments
    if slash_comments?(format)
      snippet.gsub!(/\/\* (.*?) \*\/$/, "// \\1")
    end

    # Media queries: add a starting bracket if needed
    if options['media']
      snippet.gsub!(') ', ') { ') if braced?(format)
    end

    # Add a semicolon at the end. Skip it for non-statements
    snippet.gsub!(/$/, ';')  if braced?(format) && !options['expression']

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
