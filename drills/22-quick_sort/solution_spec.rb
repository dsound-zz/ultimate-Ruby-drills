require_relative 'main'

RSpec.describe 'quick_sort' do
  it 'sorts array of numbers' do
    arr = [3, 1, 4, 1, 5, 9, 2, 6]
    quick_sort(arr)
    expect(arr).to eq([1, 1, 2, 3, 4, 5, 6, 9])
  end

  it 'handles already sorted array' do
    arr = [1, 2, 3, 4, 5]
    quick_sort(arr)
    expect(arr).to eq([1, 2, 3, 4, 5])
  end

  it 'handles reverse sorted array' do
    arr = [5, 4, 3, 2, 1]
    quick_sort(arr)
    expect(arr).to eq([1, 2, 3, 4, 5])
  end

  it 'handles empty array' do
    arr = []
    quick_sort(arr)
    expect(arr).to eq([])
  end

  it 'handles single element' do
    arr = [5]
    quick_sort(arr)
    expect(arr).to eq([5])
  end

  it 'handles duplicate values' do
    arr = [2, 2, 2, 1, 1]
    quick_sort(arr)
    expect(arr).to eq([1, 1, 2, 2, 2])
  end

  it 'handles negative numbers' do
    arr = [-3, -1, -2, 0, 1]
    quick_sort(arr)
    expect(arr).to eq([-3, -2, -1, 0, 1])
  end
end

