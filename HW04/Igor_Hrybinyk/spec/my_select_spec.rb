require_relative '../my_select.rb'

RSpec.describe Array do
  subject { described_class.new([1, 2, 2, 3]) }

  describe '#my_select' do
    context 'when eql to default select' do
      it 'its ok' do
        expect(subject.my_select { |v| v == 2 })
          .to eql(subject.select { |v| v == 2 })
      end
    end

    context 'when there is no block, enum?' do
      it 'its ok' do
        expect(Enumerator).to be(subject.my_select.class)
      end
    end
  end
end
