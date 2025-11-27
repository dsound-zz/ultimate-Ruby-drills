require_relative 'main'

RSpec.describe 'sum_values_by_key' do
  it 'sums values for single key' do
    expect(sum_values_by_key([{ a: 1 }, { a: 2 }, { a: 3 }])).to eq({ a: 6 })
  end

  it 'sums values for multiple keys' do
    expect(sum_values_by_key([
      { a: 1, b: 2 },
      { a: 3, b: 4 },
      { a: 5, b: 6 }
    ])).to eq({ a: 9, b: 12 })
  end

  it 'handles missing keys (treats as 0)' do
    expect(sum_values_by_key([
      { a: 1, b: 2 },
      { a: 3 },
      { b: 4 }
    ])).to eq({ a: 4, b: 6 })
  end

  it 'handles empty array' do
    expect(sum_values_by_key([])).to eq({})
  end

  it 'handles single hash' do
    expect(sum_values_by_key([{ x: 10, y: 20 }])).to eq({ x: 10, y: 20 })
  end

  it 'handles negative values' do
    expect(sum_values_by_key([
      { a: 5, b: -3 },
      { a: -2, b: 7 }
    ])).to eq({ a: 3, b: 4 })
  end

  it 'handles zero values' do
    expect(sum_values_by_key([
      { a: 0, b: 5 },
      { a: 0, b: 0 }
    ])).to eq({ a: 0, b: 5 })
  end
end

