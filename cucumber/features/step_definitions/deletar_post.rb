# encoding: utf-8
#!/usr/bin/env ruby

Dado(/^que eu acesse o endpoint \/posts\/idexistente$/) do
  @response = HTTParty.get('http://jsonplaceholder.typicode.com/posts/10')
  puts @response.body
end

Quando(/^eu passar um id existente no verbo DELETE$/) do
  @deletebody = {
    "id": 10
  }.to_json

  puts @deletebody

  @delete = HTTParty.delete("http://jsonplaceholder.typicode.com/posts/10",
    :body => @deletebody,
    :headers => {
      "Content-Type" => 'application/json'}
  )
end

Então(/^o post será deletado com sucesso$/) do
    puts @delete.read_header.to_s
end
