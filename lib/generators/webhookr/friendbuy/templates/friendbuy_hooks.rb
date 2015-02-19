class ProntoFormsHooks

  def on_event(incoming)
    payload = incoming.payload
    puts 'prontoforms parser on_event webhook:'
    puts payload
  end
  
end