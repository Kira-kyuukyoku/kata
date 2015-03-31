require './rot_13_2'

describe 'Convert to rot13' do
  let(:converter) { Rot13Converter.new }

  it 'nothing to convert' do
    expect(converter.encrypt('')).to eq('')
  end

  it 'one letter' do
    expect(converter.encrypt('a')).to eq('n')
  end

  it 'one word' do
    expect(converter.encrypt('hello')).to eq('uryyb')
  end

  it 'two words' do
    expect(converter.encrypt('hello world')).to eq('uryyb jbeyq')
  end

  it 'two words with punctuation' do
    expect(converter.encrypt('hello world!')).to eq('uryyb jbeyq!')
  end

  it 'two words with punctuation in caps' do
    expect(converter.encrypt('HELLO WORLD!')).to eq('URYYB JBEYQ!')
  end

  it 'three words with punctuation in caps and numbers' do
    expect(converter.encrypt('HELLO 2 WORLDS!')).to eq('URYYB 2 JBEYQF!')
  end

end