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
      if new_hash[name][:style].value?(lang_style)
        #If it exists, do nothing
      else
        new_hash[name][:style] = [lang_style]
      end
    end
  end

  new_hash
end
