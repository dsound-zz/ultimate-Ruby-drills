require_relative 'main'

RSpec.describe 'restructure_users' do
  it 'converts array to id-based lookup' do
    users = [
      { id: 1, name: 'Alice', email: 'alice@example.com' },
      { id: 2, name: 'Bob', email: 'bob@example.com' },
      { id: 3, name: 'Charlie', email: 'charlie@example.com' }
    ]
    
    result = restructure_users(users)
    expect(result).to eq({
      1 => { id: 1, name: 'Alice', email: 'alice@example.com' },
      2 => { id: 2, name: 'Bob', email: 'bob@example.com' },
      3 => { id: 3, name: 'Charlie', email: 'charlie@example.com' }
    })
  end

  it 'handles empty array' do
    expect(restructure_users([])).to eq({})
  end

  it 'handles single user' do
    users = [{ id: 1, name: 'Alice', email: 'alice@example.com' }]
    expect(restructure_users(users)).to eq({
      1 => { id: 1, name: 'Alice', email: 'alice@example.com' }
    })
  end

  it 'preserves additional properties' do
    users = [
      { id: 1, name: 'Alice', email: 'alice@example.com', age: 30, role: 'admin' }
    ]
    result = restructure_users(users)
    expect(result[1]).to eq({
      id: 1,
      name: 'Alice',
      email: 'alice@example.com',
      age: 30,
      role: 'admin'
    })
  end
end

