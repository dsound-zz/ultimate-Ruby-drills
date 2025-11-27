require_relative 'main'

RSpec.describe 'average_values_by_group' do
  it 'calculates average for single category' do
    expect(average_values_by_group([
      { category: 'A', value: 10 },
      { category: 'A', value: 20 },
      { category: 'A', value: 30 }
    ])).to eq({ A: 20 })
  end

  it 'calculates average for multiple categories' do
    expect(average_values_by_group([
      { category: 'A', value: 10 },
      { category: 'B', value: 20 },
      { category: 'A', value: 30 },
      { category: 'B', value: 40 }
    ])).to eq({ A: 20, B: 30 })
  end

  it 'handles single item per category' do
    expect(average_values_by_group([
      { category: 'X', value: 15 },
      { category: 'Y', value: 25 }
    ])).to eq({ X: 15, Y: 25 })
  end

  it 'handles empty array' do
    expect(average_values_by_group([])).to eq({})
  end

  it 'handles decimal averages' do
    expect(average_values_by_group([
      { category: 'A', value: 1 },
      { category: 'A', value: 2 },
      { category: 'A', value: 3 }
    ])).to eq({ A: 2 })
  end

  it 'handles negative values' do
    expect(average_values_by_group([
      { category: 'A', value: -10 },
      { category: 'A', value: 10 }
    ])).to eq({ A: 0 })
  end
end

