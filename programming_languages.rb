def reformat_languages(languages)
  new_hash = {}
  lang_style = []

  languages.each do |style, language|
    lang_style = style
    puts "LANG_STYLE: " + lang_style.to_s
    language.each do |name, attributes|
      puts "EXISTS: #{new_hash[name].key?(:style)}"
      new_hash[name] = attributes
      puts "NEW_HASH: #{new_hash}"
      puts
      #puts"new_hash[name][:style]: #{new_hash[name][:style]}"
      #new_hash[name][:style] = [lang_style]
    end
  end

  new_hash
end
