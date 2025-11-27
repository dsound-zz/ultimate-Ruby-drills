require_relative 'main'

RSpec.describe 'deep_clone_object' do
  it 'clones simple hash' do
    obj = { a: 1, b: 2 }
    cloned = deep_clone_object(obj)
    expect(cloned).to eq(obj)
    expect(cloned).not_to be(obj)
  end

  it 'clones nested hashes' do
    obj = { a: 1, nested: { x: 10, y: 20 } }
    cloned = deep_clone_object(obj)
    expect(cloned).to eq(obj)
    expect(cloned[:nested]).not_to be(obj[:nested])
  end

  it 'clones arrays' do
    obj = { items: [1, 2, 3] }
    cloned = deep_clone_object(obj)
    expect(cloned[:items]).to eq([1, 2, 3])
    expect(cloned[:items]).not_to be(obj[:items])
  end

  it 'clones arrays with hashes' do
    obj = { items: [{ a: 1 }, { b: 2 }] }
    cloned = deep_clone_object(obj)
    expect(cloned[:items][0]).not_to be(obj[:items][0])
    expect(cloned[:items][0]).to eq({ a: 1 })
  end

  it 'handles primitives' do
    expect(deep_clone_object(5)).to eq(5)
    expect(deep_clone_object('hello')).to eq('hello')
    expect(deep_clone_object(nil)).to be_nil
  end

  it 'modifying clone does not affect original' do
    obj = { a: 1, nested: { x: 10 } }
    cloned = deep_clone_object(obj)
    cloned[:a] = 999
    cloned[:nested][:x] = 888
    expect(obj[:a]).to eq(1)
    expect(obj[:nested][:x]).to eq(10)
  end

  it 'handles deeply nested structures' do
    obj = {
      level1: {
        level2: {
          level3: {
            value: 42
          }
        }
      }
    }
    cloned = deep_clone_object(obj)
    cloned[:level1][:level2][:level3][:value] = 999
    expect(obj[:level1][:level2][:level3][:value]).to eq(42)
  end

  it 'handles empty hash' do
    expect(deep_clone_object({})).to eq({})
  end
end

