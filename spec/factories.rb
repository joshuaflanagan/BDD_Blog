#Factory.sequence(:some_sequence) do |test|
#  "hi#{test}"
#end

Factory.define(:article) do |f|
  f.body "test"
  f.sequence(:title) { |i| "title #{i}"}
  #f.slug {|art| art.title.parameterize}
end
