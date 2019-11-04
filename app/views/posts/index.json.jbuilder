json.posts @posts, partial: "posts/post", as: :post
json.prevPage path_to_prev_page(@posts)
json.nextPage path_to_next_page(@posts)
