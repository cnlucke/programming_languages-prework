def reformat_languages(languages)
  new_hash = {}
  lang_style = []

  languages.each do |style, language|
    puts "STYLE: " + style.to_s
    lang_style = style
    language.each do |name, attributes|
      puts
      puts name
      puts attributes
      puts
      new_hash[name] = attributes
      if new_hash[name].key?(:style)
        new_hash[name][:style].push(lang_style)
      else
        new_hash[name][:style] = [lang_style]
      end
    end
  end

  new_hash
end
