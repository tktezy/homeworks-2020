require_relative '../my_methods.rb'

RSpec.describe Array do
  subject { described_class.new([1, 2, 3, 4, 5]) }

  describe '#my_each' do
    let(:test_array) { [] }
    let(:expected_result) { [2, 3, 4, 5, 6] }

    context 'when works as default each' do
      it 'returns valid values' do
        subject.my_each { |elem| test_array << elem + 1 }
        expect(test_array).to eql(expected_result)
      end
      it 'has the same object id' do
        expect(subject.my_each { |v| v }.object_id).to eql(subject.object_id)
      end
    end

    context 'when there is no block' do
      it 'works with Enumerator class' do
        expect(subject.my_each).to be_a(Enumerator)
      end
    end

    context 'when array is empty' do
      it 'returns an empty array' do
        expect(test_array.my_each { |v| v + 1 }).to eql([])
      end
    end
  end
end
