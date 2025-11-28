require_relative 'main'

RSpec.describe 'array_chunk' do
  it 'splits array into chunks of specified size' do
    expect(array_chunk([1, 2, 3, 4, 5], 2)).to eq([[1, 2], [3, 4], [5]])
  end

  it 'splits array into chunks of size 3' do
    expect(array_chunk([1, 2, 3, 4, 5, 6, 7], 3)).to eq([[1, 2, 3], [4, 5, 6], [7]])
  end

  it 'handles array evenly divisible by chunk size' do
    expect(array_chunk([1, 2, 3, 4], 2)).to eq([[1, 2], [3, 4]])
  end

  it 'handles chunk size larger than array length' do
    expect(array_chunk([1, 2, 3], 5)).to eq([[1, 2, 3]])
  end

  it 'handles empty array' do
    expect(array_chunk([], 2)).to eq([])
  end

  it 'handles chunk size of 1' do
    expect(array_chunk([1, 2, 3], 1)).to eq([[1], [2], [3]])
  end

  it 'handles string array' do
    expect(array_chunk(['a', 'b', 'c', 'd'], 2)).to eq([['a', 'b'], ['c', 'd']])
  end

  it 'handles single element array' do
    expect(array_chunk([1], 2)).to eq([[1]])
  end
end

