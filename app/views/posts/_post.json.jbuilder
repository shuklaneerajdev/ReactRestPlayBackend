json.extract! post, :id, :title, :content, :created_at, :updated_at
json.url post_url(post, format: :json)
json.comment do
  json.id '10'
  json.content 'This is just a comment'
  json.post_id post.id
  json.created_at post.created_at
  json.updated_at post.updated_at
end
json.morecomment do
  json.id '10'
  json.content 'This is just a comment'
  json.post_id post.id
  json.created_at post.created_at
  json.updated_at post.updated_at  
end
