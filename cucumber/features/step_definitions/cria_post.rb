# encoding: utf-8
#!/usr/bin/env ruby

Quando(/^eu passar os parametros necessários com o verbo POST$/) do
  createbody = {
    "title": Faker::Name.title,
    "body": Faker::Lorem.paragraph(1),
    "id": Faker::Base.numerify('###').to_s
  }.to_json
  @create = HTTParty.post("http://jsonplaceholder.typicode.com/posts",
    :body => createbody,
    :headers => {
      "Content-Type" => 'application/json'}
  )
  puts createbody
end

Então(/^o post será criado com sucesso$/) do
  puts "Resultado do Post: " +@create.read_header.to_s
end
