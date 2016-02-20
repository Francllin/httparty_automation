# encoding: utf-8
#!/usr/bin/env ruby

Dado(/^que eu acesse o endpoint \/posts$/) do
  @response = HTTParty.get('http://jsonplaceholder.typicode.com/posts')
  puts "Quantidade existente de posts: " +@response.size.to_s
end

Quando(/^eu bater no endpoint com um id$/) do
  @response_id = HTTParty.get('http://jsonplaceholder.typicode.com/posts/10')
end

Então(/^irá me trazer o corpo da request$/) do
  puts @response_id.body
end
