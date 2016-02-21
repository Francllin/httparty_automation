# Processo Seletivo WM - Testes de GET, PUT, POST e DELETE automatizado com HTTParty.

The objective of test is to automate the HTTP verbs. The site was used jsonplaceholder.typicode.com with endpoint "/posts".

# Setup

- This test needed ruby 2.2.0 >;
- Needed gem bundler instaled (default):

```ruby
gem install bundler
```
- Needed Qt package instaled for compiling capybara-webkit: https://goo.gl/vdjW7;
- Execute bundle install on path cucumber.

# Execute test

- On path cucumber, execute this command for the start all tests: cucumber
- For execute specific feature, execute this command on path cucumber: cucumber --require features features/specifications/xxx.feature



