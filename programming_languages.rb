def reformat_languages(languages)
  new_hash = {}
  lang_style = []

  languages.each do |style, language|
    lang_style = style
    language.each do |name, attributes|
      puts
      puts name
      puts attributes
      puts
      new_hash[name] = attributes
      if new_hash[name].key?(:style)
        #if new_hash[name][:style].has_value?(lang_style)
          puts "STYLE: #{new_hash[name][:style]}"
        end
      else
        new_hash[name][:style] = [lang_style]
      end
    end
  end

  new_hash
end
