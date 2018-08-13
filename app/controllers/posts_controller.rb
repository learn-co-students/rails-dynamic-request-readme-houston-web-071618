#app/controllers/posts_controller.#!/usr/bin/env ruby -wKU

class PostsController <ApplicationController
  def show
    @post = Post.find(params[:id])
  end
  it 'shows the description on the show page in a p tag' do
  visit "/posts/#{@post.id}"
  expect(page).to have_css("p", text: "My post desc")
end

end
