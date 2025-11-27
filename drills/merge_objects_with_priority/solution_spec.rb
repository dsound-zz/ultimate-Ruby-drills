require_relative 'main'

RSpec.describe 'merge_objects_with_priority' do
  it 'merges flat hashes with second overriding first' do
    hash1 = { a: 1, b: 2 }
    hash2 = { b: 3, c: 4 }
    expect(merge_objects_with_priority(hash1, hash2)).to eq({ a: 1, b: 3, c: 4 })
  end

  it 'preserves nested hashes (deep merge)' do
    hash1 = { a: 1, nested: { x: 10, y: 20 } }
    hash2 = { nested: { y: 30, z: 40 } }
    result = merge_objects_with_priority(hash1, hash2)
    expect(result).to eq({ a: 1, nested: { x: 10, y: 30, z: 40 } })
  end

  it 'handles empty hashes' do
    expect(merge_objects_with_priority({}, { a: 1 })).to eq({ a: 1 })
    expect(merge_objects_with_priority({ a: 1 }, {})).to eq({ a: 1 })
  end

  it 'handles deeply nested structures' do
    hash1 = {
      level1: {
        level2: {
          a: 1,
          b: 2
        },
        x: 10
      }
    }
    hash2 = {
      level1: {
        level2: {
          b: 3,
          c: 4
        }
      }
    }
    result = merge_objects_with_priority(hash1, hash2)
    expect(result[:level1][:level2]).to eq({ a: 1, b: 3, c: 4 })
    expect(result[:level1][:x]).to eq(10)
  end

  it 'overwrites arrays (not merging them)' do
    hash1 = { items: [1, 2, 3] }
    hash2 = { items: [4, 5] }
    expect(merge_objects_with_priority(hash1, hash2)).to eq({ items: [4, 5] })
  end
end

