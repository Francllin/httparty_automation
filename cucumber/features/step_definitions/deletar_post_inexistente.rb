# encoding: utf-8
#!/usr/bin/env ruby

Quando(/^eu passar um id inexistente no verbo DELETE$/) do
  @delete_inexistente_body = {
    "id": "esse_id_nao_existe"
  }.to_json

  puts @delete_inexistente_body

  @delete_inexistente = HTTParty.delete("http://jsonplaceholder.typicode.com/posts/esse_id_nao_existe",
    :body => @delete_inexistente_body,
    :headers => {
      "Content-Type" => 'application/json'}
  )
end

Então(/^deverá retornar (\d+) \(Not Found\)$/) do |arg1|
  puts @delete_inexistente.read_header
end
