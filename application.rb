require 'delivery_boy'
require 'json'

class Application

  attr_reader :id
  attr_accessor :nome, :renda, :score, :cep

  def initialize(id, nome, renda, score, cep)
    @id = id
    @nome = nome
    @renda = renda
    @score = score
    @cep = cep
    DeliveryBoy.deliver(message_body, topic: 'pp-commands')
  end

  private

  def message_body
    {id: id, nome: nome, renda: renda, score: score, cep: cep}.to_json
  end
end
