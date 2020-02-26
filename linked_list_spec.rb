require 'rspec/autorun'
require './linked_list'

describe LinkedList do
  link = LinkedList.new("john")
  it "will create a new node" do
    expect(link.push("yadu")).to eq("yadu")
  end
  it "will delete a node" do
    expect(link.pop('john')).not_to eq('john')
  end
  it "travers the list" do
    expect(link.traverse).to include("yadu")

  end
end
