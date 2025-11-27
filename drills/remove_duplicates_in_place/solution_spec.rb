require_relative 'main'

RSpec.describe 'remove_duplicates_in_place' do
  it 'removes duplicates from sorted array' do
    nums = [1, 1, 2]
    length = remove_duplicates_in_place(nums)
    expect(length).to eq(2)
    expect(nums[0, length]).to eq([1, 2])
  end

  it 'handles multiple duplicates' do
    nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
    length = remove_duplicates_in_place(nums)
    expect(length).to eq(5)
    expect(nums[0, length]).to eq([0, 1, 2, 3, 4])
  end

  it 'handles array with no duplicates' do
    nums = [1, 2, 3, 4, 5]
    length = remove_duplicates_in_place(nums)
    expect(length).to eq(5)
    expect(nums[0, length]).to eq([1, 2, 3, 4, 5])
  end

  it 'handles single element' do
    nums = [1]
    length = remove_duplicates_in_place(nums)
    expect(length).to eq(1)
    expect(nums[0, length]).to eq([1])
  end

  it 'handles all same elements' do
    nums = [1, 1, 1, 1]
    length = remove_duplicates_in_place(nums)
    expect(length).to eq(1)
    expect(nums[0, length]).to eq([1])
  end

  it 'handles empty array' do
    nums = []
    length = remove_duplicates_in_place(nums)
    expect(length).to eq(0)
  end
end

