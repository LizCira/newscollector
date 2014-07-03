Rails.application.routes.draw do

root to: "articles#index"

  resources :articles do
    resources :comments
  end


#                 root GET    /                                                 articles#index
#     article_comments GET    /articles/:article_id/comments(.:format)          comments#index
#                      POST   /articles/:article_id/comments(.:format)          comments#create
#  new_article_comment GET    /articles/:article_id/comments/new(.:format)      comments#new
# edit_article_comment GET    /articles/:article_id/comments/:id/edit(.:format) comments#edit
#      article_comment GET    /articles/:article_id/comments/:id(.:format)      comments#show
#                      PATCH  /articles/:article_id/comments/:id(.:format)      comments#update
#                      PUT    /articles/:article_id/comments/:id(.:format)      comments#update
#                      DELETE /articles/:article_id/comments/:id(.:format)      comments#destroy
#             articles GET    /articles(.:format)                               articles#index
#                      POST   /articles(.:format)                               articles#create
#          new_article GET    /articles/new(.:format)                           articles#new
#         edit_article GET    /articles/:id/edit(.:format)                      articles#edit
#              article GET    /articles/:id(.:format)                           articles#show
#                      PATCH  /articles/:id(.:format)                           articles#update
#                      PUT    /articles/:id(.:format)                           articles#update
#                      DELETE /articles/:id(.:format)                           articles#destroy


end
