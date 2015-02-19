class FriendbuyHooks

  def on_event(incoming)
    payload = incoming.payload
    puts 'friendbuy parser on_event webhook:'
    puts payload
  end
  
end
