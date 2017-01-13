 Prefix Verb   URI Pattern                 Controller#Action
contact_us POST   /posts/contact_us(.:format) posts#contact_us
     posts GET    /posts(.:format)            posts#index
           POST   /posts(.:format)            posts#create
  new_post GET    /posts/new(.:format)        posts#new
 edit_post GET    /posts/:id/edit(.:format)   posts#edit
      post GET    /posts/:id(.:format)        posts#show
           PATCH  /posts/:id(.:format)        posts#update
           PUT    /posts/:id(.:format)        posts#update
           DELETE /posts/:id(.:format)        posts#destroy
      root GET    /                           home#index