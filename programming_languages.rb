def reformat_languages(languages)
  new_hash = {}
  lang_style = []

  languages.each do |style, language|
    lang_style = style
    puts "LANG_STYLE: " + lang_style.to_s
    puts
    language.each do |name, attributes|
      puts "ATTRIB: #{attributes}"
      puts
      new_hash[name] = attributes
      if new_hash[name].key?(:style)
        if new_hash[name][:style][0] != lang_style
          new_hash[name][:style] << lang_style
        end
      else
        new_hash[name][:style] = [lang_style]
      end
      puts "EXISTS: #{new_hash[name].key?(:style)}"
      puts

      puts "NEW_HASH: #{new_hash}"
      puts
      #puts"new_hash[name][:style]: #{new_hash[name][:style]}"
      #new_hash[name][:style] = [lang_style]
    end
  end

  new_hash
end
