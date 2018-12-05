require 'memory'

describe Memory do

  subject { Memory.new }

  describe ".save_data" do
    it "saves a new hash to the store" do
      subject.save_data({ "key" => "value" })
      expect(subject.store).to eq({ "key" => "value" })
    end
    it "can save multiple key-pair values to the store" do
      subject.save_data({ "key" => "value" })
      subject.save_data({ "another_key" => "another_value" })
      expect(subject.store).to eq({ "key" => "value", "another_key" => "another_value" })
    end
  end

end
