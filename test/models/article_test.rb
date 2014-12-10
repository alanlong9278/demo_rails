require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
   test "can not save without a title" do
     article = Article.new
     article.text = "Alan is a cool man!!!"
     assert_not article.save, "can not save without a title"    
   end
end
