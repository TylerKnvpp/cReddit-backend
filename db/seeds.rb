# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create({
    name: 'a',
    username: 'a',
    password: 'a',
    avatar: nil,
    credibility: 100
})
Post.create({
    title: 'Here is a post',
    content: 'Here is the content for the post',
    image_url: nil,
    user_id: 1,
    upvotes: 100,
    downvotes: 50
})
Comment.create({
    content: "Comment content",
    upvotes: 100,
    downvotes: 31,
    source: nil,
    source_validated: nil,
    source_disputed: nil,
    is_fact?: false,
    user_id: 1,
    post_id: 1,
})
