#Factory.sequence(:some_sequence) do |test|
#  "hi#{test}"
#end

Factory.define(:article) do |f|
  f.body "test"
  f.sequence(:title) { |i| "title #{i}"}
  f.association(:user, :factory => :confirmed_user)
end

Factory.define(:user) do |f|
  f.sequence(:email){|i| "user#{i}@example.com"}
  f.password "password"
  f.password_confirmation "password"
end

Factory.define(:confirmed_user, :parent => :user) do |f|
  f.confirmed_at Time.zone.now
end
