require 'spec_helper'

describe Article do
  context "validations" do
    before(:each) do
      @article = Article.create(:title => "new title", :body => "body stuff")
    end
    it {@article.should validate_presence_of(:title)}
    it {@article.should validate_presence_of(:body)}
    it {@article.should validate_uniqueness_of(:title)}
  end
end
