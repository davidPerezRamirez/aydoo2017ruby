require 'rspec' 
require_relative '../model/factorizador'

describe 'Factorizador' do

  let(:factorizador) { Factorizador.new }  

  it 'calcularFactoresPrimos de 12 deberia ser [2,2,3]' do
    expect(factorizador.calcularFactoresPrimos(12)).to eq [2,2,3]
  end

  it 'calcularFactoresPrimos de 12 deberia ser []' do
    expect(factorizador.calcularFactoresPrimos(0)).to eq [] 
  end

 end