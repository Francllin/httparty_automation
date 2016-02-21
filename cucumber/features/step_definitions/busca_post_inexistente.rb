# encoding: utf-8
#!/usr/bin/env ruby

Quando(/^eu bater nesse endpoint com um id inexistente \(\/id\)$/) do
  @response_id_inexistente = HTTParty.get('http://jsonplaceholder.typicode.com/posts/biro')
end

Então(/^irá me retornar o erro Not Found (\d+)$/) do |arg1|
  puts @response_id_inexistente.read_header
end
