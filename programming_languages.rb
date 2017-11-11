def reformat_languages(languages)
  new_hash = {}
  lang_style = []

  languages.each do |style, language|
    lang_style = style

    language.each do |name, attributes|
      if !(new_hash.key?(name))
        new_hash[name] = attributes
      end

      if new_hash[name].key?(:style)
        if !(new_hash[name][:style].include?(lang_style))
          new_hash[name][:style] << lang_style
        end
      else
        new_hash[name][:style] = [lang_style]
      end
    end
  end

  new_hash
end
