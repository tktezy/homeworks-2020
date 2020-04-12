require_relative '../my_methods.rb'

RSpec.describe Array do
  subject { described_class.new([1, 2, 2, 3]) }

  describe '#my_select' do
    let(:test_array) { [] }

    context 'when eql to default select' do
      it 'outputs the correct values' do
        expect(subject.my_select { |v| v == 2 })
          .to eql(subject.select { |v| v == 2 })
      end
    end

    context 'when there is no block, enum?' do
      it 'works with Enum class' do
        expect(Enumerator).to be(subject.my_select.class)
      end
    end

    context 'when array is empty' do
      it 'returns an empty array' do
        expect(test_array.my_each { |v| v == 2 }).to eql([])
      end
    end
  end
end
