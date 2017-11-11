def reformat_languages(languages)
  new_hash = {}
  lang_style = []

  languages.each do |style, language|
    lang_style = [style]
    language.each do |name, attributes|
      new_hash[name] = attributes
      new_hash[name][:style] = lang_style.push(lang_style)
    end
  end

  new_hash
end
