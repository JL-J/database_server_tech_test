class Memory

  attr_reader :store

  def initialize
    @store = {}
  end

  def save_data(hash)
    @store.merge!(hash)
  end

  def return_data(key)
    @store[key] 
  end

end
