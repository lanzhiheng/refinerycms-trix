# Refinery CMS Trix Editor (the visual editor)
Refinery CMS is backed by [Trix](https://github.com/basecamp/trix)

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'refinerycms-trix', :git => 'git@github.com:lanzhiheng/refinerycms-trix.git'
```

And then execute:

```bash
$ bundle
```

Next, to install the Trix  extension run:

```
rails generate refinery:trix
```

## Stylesheet

All the content which in the trix editor are wrapper in the class name `trix-content` within the div element whose id is `content`. So you can override the stylesheet like below

``` css
#content {
  .trix-content {
    h1 {
      color: red;
    }
  }
}
```

then all the main title text in your content will be red.

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
