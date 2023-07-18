require 'rspec'
require_relative '../lib/gate'
require_relative '../lib/ticket'

describe Gate do
  let(:umeda) { Gate.new(:umeda) }
  let(:juso) { Gate.new(:juso) }
  let(:mikuni) { Gate.new(:mikuni) }

  context "梅田から十三までの場合" do
    let(:ticket) { Ticket.new(160) }

    before do
      umeda.enter(ticket)
    end

    it "十三で出る" do
      expect(juso.exit(ticket)).to eq true
    end
  end

  context "梅田から三国までが運賃不足の場合" do
    let(:ticket) { Ticket.new(150) }

    before do
      umeda.enter(ticket)
    end

    it "三国では出れない" do
      expect(mikuni.exit(ticket)).to eq false
    end
  end
end
