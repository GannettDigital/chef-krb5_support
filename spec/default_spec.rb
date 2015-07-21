# encoding: utf-8
require 'chefspec'
require 'spec_helper'
require 'fauxhai'

describe 'krb5_support::default' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new do |node|
    end.converge(described_recipe)
  end

  it 'includes krb5 recipe' do
    expect(chef_run).to include_recipe('krb5')
  end
end
