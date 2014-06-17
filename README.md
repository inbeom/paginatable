# Paginatable

Pagination helper for ActiveRecord models. Paginatable provides a mixin
(which extends ActiveSupport::Concern) that adds helpful named scopes for pagination.

## Installation

Add this line to your application's Gemfile:

    gem 'paginatable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install paginatable

## Usage

Include `Paginatable` concern to your models:

    class Post
      include Paginatable
    end

Use `Paginatable.paginate` to paginate your records:

    # In posts/index action:

    Post.all.paginate(params.slice(:page, :per_page, :max_id, :since_id))

### Supported parameters

  - `page`: 1-based page index. Defaults to 1.
  - `per_page`: Number of records in a page. Defaults to 50.
  - `max_id`: Upperbound for `id` field.
  - `since_id`: Lowerbound for `id` field.
  - `_order`: SQL snippet for ordering records. Defaults to `'id DESC'`.


## Contributing

1. Fork it ( https://github.com/[my-github-username]/paginatable/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
