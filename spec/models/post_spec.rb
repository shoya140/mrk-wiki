require 'spec_helper'

describe Post do
#   pending "add some examples to (or delete) #{__FILE__}"

  it "is valid with a title and body" do
    post = Post.new(
      title: "New Post",
      body: "Description of this post")
    expect(post).to be_valid
  end

  it "is invalid without a title" do
    expect(Post.new(title: nil)).to have(1).errors_on(:title)
  end

  it "is invalid without a body" do
    expect(Post.new(body: nil)).to have(1).errors_on(:body)
  end

  it "is invalid with a duplicate title" do
    Post.create(
      title: "title1",
      body: "body1")
    post = Post.new(
      title: "title1",
      body: "body2")
    expect(post).to have(1).errors_on(:title)
  end

end
