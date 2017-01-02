# Trello Release Bot

After each `cap deploy` this bot creates trello card with information about deploy

## Installation

In `Gemfile`:

```ruby
gem 'thin_release_bot', git: 'https://github.com/skore-io/trellocap.git'
```

In your `deploy.rb` include the following variable

```
#trello_bot

set :repo_revision, "https://github.com/skore-io/#{fetch(:application)}"
set :trello_key, "ef767bfeb0c6f8fc0c5820569ec04c41"
set :trello_token, "41c4bc3ec5f5b6a378e554f5eb4325efe45988688753bf5c434b3bc018fd910b"
set :board_id, "EHQPQvzm"
```


In `Capfile` just add this line

```ruby
require 'capistrano/trello_cap_rake'
```

NOTE: link to generate token:

`https://trello.com/1/authorize?key=TRELLO_API_KEY&name=DEPLOY_BOT_NAME&expiration=never&response_type=token&scope=read,write,account`


## How to track cards and users

To track cards activity just add in commit message Trello card shortLink, for example for card:

`https://trello.com/c/zxqgpGTd/example-card`

shortLink is `zxqgpGTd`

`cid#zxqgpGTd` - include in commit message

and to track user with Trello username "USER_NAME" include in commit:

`un#USER_NAME`

So commit message must be like this:

`cid#zxqgpGTd un#USER_NAME YOUR MASSAE`
