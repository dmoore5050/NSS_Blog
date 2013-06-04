require 'test_helper'

class AnonymousPostsArticleTest < ActionDispatch::IntegrationTest

  test "browse articles" do
    Post.create!(title: "First Post!!", body: "This is awkward... I have nothing to say :(")
    Post.create!(title: "Wow, it's been awhile!", body: "And yet, I'm still not a writer :( :( lolol")

    visit '/posts'

    assert_include page.body, 'All Posts'
    assert_include page.body, 'First Post!!'
    assert_include page.body, 'Wow, it\'s been awhile!'
  end

end
