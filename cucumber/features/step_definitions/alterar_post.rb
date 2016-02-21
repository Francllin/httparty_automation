# encoding: utf-8
#!/usr/bin/env ruby

Dado(/^que eu acesse o endpoint \/posts\/(\d+)$/) do |arg1|
  @response_id = HTTParty.get('http://jsonplaceholder.typicode.com/posts/10')
  puts @response_id.body
end

Quando(/^eu passar o id (\d+) alterando o título no verbo PUT$/) do |arg1|
  @altera_post_body = {
    "id": 10,
    "title": "Título alterado."
  }.to_json

  puts @altera_post_body

  @alterar = HTTParty.put("http://jsonplaceholder.typicode.com/posts/10",
    :body => @altera_post_body,
    :headers => {
      "Content-Type" => 'application/json'}
  )
end

Então(/^deverá alterar com sucesso, trazendo status (\d+) \(OK\)$/) do |arg1|
  puts @alterar.read_header
end
