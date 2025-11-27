require_relative 'main'

RSpec.describe 'container_with_most_water' do
  it 'finds maximum area' do
    expect(container_with_most_water([1, 8, 6, 2, 5, 4, 8, 3, 7])).to eq(49)
  end

  it 'handles two elements' do
    expect(container_with_most_water([1, 1])).to eq(1)
  end

  it 'handles increasing heights' do
    expect(container_with_most_water([1, 2, 3, 4, 5])).to eq(6)
  end

  it 'handles decreasing heights' do
    expect(container_with_most_water([5, 4, 3, 2, 1])).to eq(6)
  end

  it 'handles same heights' do
    expect(container_with_most_water([3, 3, 3, 3])).to eq(9)
  end
end

