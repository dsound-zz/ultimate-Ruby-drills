require_relative 'main'

RSpec.describe 'group_by_property' do
  it 'groups by string property' do
    arr = [
      { category: 'A', value: 1 },
      { category: 'B', value: 2 },
      { category: 'A', value: 3 },
      { category: 'B', value: 4 }
    ]
    expect(group_by_property(arr, :category)).to eq({
      'A' => [{ category: 'A', value: 1 }, { category: 'A', value: 3 }],
      'B' => [{ category: 'B', value: 2 }, { category: 'B', value: 4 }]
    })
  end

  it 'groups by number property' do
    arr = [
      { age: 20, name: 'Alice' },
      { age: 20, name: 'Bob' },
      { age: 30, name: 'Charlie' }
    ]
    result = group_by_property(arr, :age)
    expect(result[20].length).to eq(2)
    expect(result[30].length).to eq(1)
  end

  it 'handles empty array' do
    expect(group_by_property([], :category)).to eq({})
  end

  it 'handles single item' do
    arr = [{ type: 'X', value: 1 }]
    expect(group_by_property(arr, :type)).to eq({
      'X' => [{ type: 'X', value: 1 }]
    })
  end

  it 'handles all items with same property value' do
    arr = [
      { status: 'active', id: 1 },
      { status: 'active', id: 2 },
      { status: 'active', id: 3 }
    ]
    result = group_by_property(arr, :status)
    expect(result['active'].length).to eq(3)
  end
end

