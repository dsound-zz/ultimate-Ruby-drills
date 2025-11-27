require_relative 'main'

RSpec.describe 'binary_search_insert_position' do
  it 'finds insert position for existing element' do
    expect(binary_search_insert_position([1, 3, 5, 6], 5)).to eq(2)
  end

  it 'finds insert position for non-existing element' do
    expect(binary_search_insert_position([1, 3, 5, 6], 2)).to eq(1)
  end

  it 'finds insert position at start' do
    expect(binary_search_insert_position([1, 3, 5, 6], 0)).to eq(0)
  end

  it 'finds insert position at end' do
    expect(binary_search_insert_position([1, 3, 5, 6], 7)).to eq(4)
  end

  it 'handles duplicates - returns first position' do
    expect(binary_search_insert_position([1, 2, 2, 2, 3], 2)).to eq(1)
  end

  it 'handles empty array' do
    expect(binary_search_insert_position([], 5)).to eq(0)
  end

  it 'handles single element array' do
    expect(binary_search_insert_position([5], 3)).to eq(0)
    expect(binary_search_insert_position([5], 7)).to eq(1)
    expect(binary_search_insert_position([5], 5)).to eq(0)
  end
end

