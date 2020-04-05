require_relative '../my_methods.rb'

RSpec.describe Array do
  subject { described_class.new([1, 2, 3, 4, 5]) }

  describe '#my_each' do
    let(:result) { [] }
    let(:expected_result) { [2, 3, 4, 5, 6] }

    context 'works as default each' do
      it 'returns valid values' do
        subject.my_each { |elem| result << elem + 1 }
        expect(result).to eql(expected_result)
      end
    end

    context 'when there is no object created' do
      it 'has the same object id' do
        expect(subject.my_each { |v| v }.object_id).to eql(subject.object_id)
      end
    end

    context 'when there is no block, enum?' do
      it 'works with Enum class' do
        expect(subject.my_each.is_a?(Enumerator)).to be true
      end
    end
  end
end
