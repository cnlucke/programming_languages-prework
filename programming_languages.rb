def reformat_languages(languages)
  new_hash = {}
  lang_style = []

  languages.each do |style, language|
    lang_style = [style]
    language.each do |name, attributes|
      new_hash[name] = attributes

      attributes.each do |attribute_name, attrbiute_value|

        if new_hash[name][:style] == []
          new_hash[name][:style] = lang_style
        else
          new_hash[name][:style][lang_style] << lang_style
        end
      end
    end
  end

  new_hash
end
