def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, info|
    info.each do |language, type|
      if new_hash[language] == nil
        new_array = []
        new_array << style
        new_hash[language] = {type:type.values.join, style:new_array}
      else
        new_array = new_hash[language][:style]
        new_array << style
        new_hash[language] = {type:type.values.join, style:new_array}
      end
    end
  end
  new_hash
end
