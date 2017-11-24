def to_underscore(string)
  string.titleize.gsub(' ', '').underscore
end