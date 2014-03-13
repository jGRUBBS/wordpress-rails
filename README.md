wordpress-rails
===============

Wordpress on Rails

### INSTALL

```ruby
gem 'wordpress-rails', git: 'https://github.com/jGRUBBS/wordpress-rails'
```

### EXAMPLES

Get all posts
```ruby
posts = Wordpress::Post.all
```

Find post
```ruby
post = Wordpress::Post.find(29)
```

Get post images
```ruby
post.images
```

| Tables                 | Models                                                 |
| ---------------------- | ------------------------------------------------------ |
| wp_commentmeta         |                                                        |
| wp_comments            |                                                        |
| wp_links               |                                                        |
| wp_options             | Wordpress::Option                                      |
| wp_postmeta            | Wordpress::Postmeta                                    |
| wp_posts               | Wordpress::BasePost, Wordpress::Post, Wordpress::Image |
| wp_term_relationships  |                                                        |
| wp_term_taxonomy       |                                                        |
| wp_terms               |                                                        |
| wp_usermeta            |                                                        |
| wp_users               | Wordpress::User                                        |
