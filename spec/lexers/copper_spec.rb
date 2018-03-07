# -*- coding: utf-8 -*- #

describe Rouge::Lexers::Copper do
  let(:subject) { Rouge::Lexers::Copper.new }

  describe 'guessing' do
    include Support::Guessing

    it 'guesses by filename' do
      assert_guess :filename => 'foo.cu'
    end

    it 'guesses by mimetype' do
      assert_guess :mimetype => 'text/x-copper'
      assert_guess :mimetype => 'application/x-copper'
    end
  end
end
