require_relative 'spec_helper'
require 'active_record'
describe 'nil? empty? false? blank?' do
  describe '#nil?' do
    is_nil = 'is nil'
    is_not_nil = 'is NOT nil'

    it "nil #{is_nil}" do
      obj = nil
      expect(obj.nil?).to be true
    end

    it "false #{is_not_nil}" do
      obj = false
      expect(obj.nil?).to be false
    end

    it "true #{is_not_nil}" do
      obj = true
      expect(obj.nil?).to be false
    end

    it "0 #{is_not_nil}" do
      obj = 0
      expect(obj.nil?).to be false
    end

    it "1 #{is_not_nil}" do
      obj = 1
      expect(obj.nil?).to be false
    end

    it "'' #{is_not_nil}" do
      obj = ''
      expect(obj.nil?).to be false
    end

    it "' ' #{is_not_nil}" do
      obj = ' '
      expect(obj.nil?).to be false
    end

    it "[] #{is_not_nil}" do
      obj = []
      expect(obj.nil?).to be false
    end

    it "[nil] #{is_not_nil}" do
      obj = [nil]
      expect(obj.nil?).to be false
    end

    it "{} #{is_not_nil}" do
      obj = {}
      expect(obj.nil?).to be false
    end

    it "{ a: nil } #{is_not_nil}" do
      obj = { a: nil }
      expect(obj.nil?).to be false
    end
  end

  describe '#empty?' do
    does_not_respond = 'does not respond to empty?'
    is_empty = 'is empty'
    is_not_empty = 'is NOT empty'

    it "nil #{does_not_respond}" do
      obj = nil
      expect(obj).to_not respond_to(:empty?)
    end

    it "false #{does_not_respond}" do
      obj = false
      expect(obj).to_not respond_to(:empty?)
    end

    it "true #{does_not_respond}" do
      obj = true
      expect(obj).to_not respond_to(:empty?)
    end

    it "0 #{does_not_respond}" do
      obj = 0
      expect(obj).to_not respond_to(:empty?)
    end

    it "1 #{does_not_respond}" do
      obj = 1
      expect(obj).to_not respond_to(:empty?)
    end

    it "'' #{is_empty}" do
      obj = ''
      expect(obj.empty?).to be true
    end

    it "' ' #{is_not_empty}" do
      obj = ' '
      expect(obj.empty?).to be false
    end

    it "[] #{is_empty}" do
      obj = []
      expect(obj.empty?).to be true
    end

    it "[nil] #{is_not_empty}" do
      obj = [nil]
      expect(obj.empty?).to be false
    end

    it "{} #{is_empty}" do
      obj = {}
      expect(obj.empty?).to be true
    end

    it "{ a: nil } #{is_empty}" do
      obj = { a: nil }
      expect(obj.empty?).to be false
    end
  end

  describe '#blank?' do
    does_not_respond = 'does not respond to blank?'
    is_blank = 'is blank'
    is_not_blank = 'is NOT blank'

    it "nil #{is_blank}" do
      obj = nil
      expect(obj.blank?).to be true
    end

    it "false #{is_blank}" do
      obj = false
      expect(obj.blank?).to be true
    end

    it "true #{is_not_blank}" do
      obj = true
      expect(obj.blank?).to be false
    end

    it "0 #{is_not_blank}" do
      obj = 0
      expect(obj.blank?).to be false
    end

    it "1 #{is_not_blank}" do
      obj = 1
      expect(obj.blank?).to be false
    end

    it "'' #{is_blank}" do
      obj = ''
      expect(obj.blank?).to be true
    end

    it "' ' #{is_blank}" do
      obj = ' '
      expect(obj.blank?).to be true
    end

    it "[] #{is_blank}" do
      obj = []
      expect(obj.blank?).to be true
    end

    it "[nil] #{is_not_blank}" do
      obj = [nil]
      expect(obj.blank?).to be false
    end

    it "{} #{is_blank}" do
      obj = {}
      expect(obj.blank?).to be true
    end

    it "{ a: nil } #{is_not_blank}" do
      obj = { a: nil }
      expect(obj.blank?).to be false
    end
  end

end
