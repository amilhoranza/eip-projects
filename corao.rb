class Corao
  include Phobos::Handler
  def consume(payload, metadata)
    # payload  - This is the content of your Kafka message, Phobos does not attempt to
    #            parse this content, it is delivered raw to you
    # metadata - A hash with useful information about this event, it contains: The event key,
    #            partition number, offset, retry_count, topic, group_id, and listener_id
    puts 'Atualizar application com PP'
  end
end
