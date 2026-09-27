require 'spec_helper'
require_relative '../caesar_cipher'
RSpec.describe 'caesar_cipher' do
  describe 'Proper right-shift encoding' do
    it 'Exercise-provided string' do
      expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    end

    it 'Testing - Aristotle' do
      expect(caesar_cipher("We are what we repeatedly do. Excellence, then, is not an act, but a habit.", 14)).to eq("Ks ofs kvoh ks fsdsohsrzm rc. Slqszzsbqs, hvsb, wg bch ob oqh, pih o vopwh.")
    end

    it 'Testing - Shakespeare (Hamlet)' do
      expect(caesar_cipher("This above all: to thine own self be true.", 3)).to eq("Wklv deryh doo: wr wklqh rzq vhoi eh wuxh.")
    end
  
  end
end