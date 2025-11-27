require_relative 'main'

RSpec.describe 'merge_sort' do
  it 'sorts array of numbers' do
    expect(merge_sort([3, 1, 4, 1, 5, 9, 2, 6])).to eq([1, 1, 2, 3, 4, 5, 6, 9])
  end

  it 'handles already sorted array' do
    expect(merge_sort([1, 2, 3, 4, 5])).to eq([1, 2, 3, 4, 5])
  end

  it 'handles reverse sorted array' do
    expect(merge_sort([5, 4, 3, 2, 1])).to eq([1, 2, 3, 4, 5])
  end

  it 'handles empty array' do
    expect(merge_sort([])).to eq([])
  end

  it 'handles single element' do
    expect(merge_sort([5])).to eq([5])
  end

  it 'handles duplicate values' do
    expect(merge_sort([2, 2, 2, 1, 1])).to eq([1, 1, 2, 2, 2])
  end

  it 'handles negative numbers' do
    expect(merge_sort([-3, -1, -2, 0, 1])).to eq([-3, -2, -1, 0, 1])
  end
end

