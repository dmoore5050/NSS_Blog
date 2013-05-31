require 'test_helper'

class AnonymousPostsArticleTest < ActionDispatch::IntegrationTest

  test "browse articles" do
    Post.create!(title: "First Post!!", body: "This is awkward... I have nothing to say :(")
    Post.create!(title: "Wow, it's been awhile!", body: "And yet, I'm still not a writer :( :( lolol")

    visit '/'
    click link 'View all posts'
    assert_current_path '/posts'
    #assume we have a page variable
    assert_include page.content, 'First Post!!'
    assert_include page.content, 'Wow, it\'s been awhile!'
  end

  # test "the truth" do
  #   assert true
  # end
end
