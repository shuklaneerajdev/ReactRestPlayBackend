namespace :fill_data do
  task fill_blog: :environment do |t|
    Post.all.each do |b|
      b.delete
    end
    40.times do
      quote = Faker::TvShows::GameOfThrones.quote
      Post.create!(title: quote[0..10], content: quote)
    end
    puts "Done with creating blog posts."
  end

  task fill_authors: :environment do |t|
    Author.all.each do |a|
      a.delete
    end
    40.times do
      name = Faker::TvShows::GameOfThrones.character
      Author.create!(name: name)
    end
    puts "Done with creating authors"
  end

  task add_comment: :environment do |t|
    Post.all.each do |p|
      2.times do
        Comment.create!(post_id: p.id, content: Faker::Quote.famous_last_words)
      end
    end
    puts "Added comments to each post."
  end
end
