require_relative '../my_methods.rb'

RSpec.describe Array do
  subject { described_class.new([1, 2, 3, 4]) }

  describe '#my_map' do
    context 'when eql to default map' do
      it 'its ok' do
        expect(subject.my_map { |v| v + 1 }).to eql(subject.map { |v| v + 1 })
      end
    end

    context 'creates a new array?' do
      it 'Yes' do
        expect(subject.my_map { |v| v }.object_id).not_to eql(subject.object_id)
      end
    end

    context 'when there is no block, enum?' do
      it 'its ok' do
        expect(Enumerator).to be(subject.my_map.class)
      end
    end
  end
end
