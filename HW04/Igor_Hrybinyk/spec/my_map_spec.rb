require_relative '../my_methods.rb'

RSpec.describe Array do
  subject { described_class.new([1, 2, 3, 4]) }

  describe '#my_map' do
    let(:test_array) { [] }

    context 'when works as default map' do
      it 'returns valid values' do
        expect(subject.my_map { |v| v + 1 }).to eql(subject.map { |v| v + 1 })
      end
    end

    context 'when creates a new object' do
      it 'it has unique object id' do
        expect(subject.my_map { |v| v }.object_id).not_to eql(subject.object_id)
      end
    end

    context 'when there is no block' do
      it 'works with Enumerator class' do
        expect(Enumerator).to be(subject.my_map.class)
      end
    end

    context 'when array is empty' do
      it 'returns an empty array' do
        expect(test_array.my_each { |v| v + 1 }).to eql([])
      end
    end
  end
end
