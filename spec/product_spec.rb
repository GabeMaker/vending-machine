require 'product'

describe Product do

  let(:product){ Product.new 'cola', 100 }

  it 'has a price' do
    expect(product.price).to eq 100
  end

  it 'has a name' do
    expect(product.name).to eq 'cola'
  end
end