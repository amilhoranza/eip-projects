require 'delivery_boy'
require 'json'

class KafkaClient
  def initialize(args)

  end
  def self.send_message(message)
    DeliveryBoy.deliver(message.to_json, topic: "my-topic")
  end
end
