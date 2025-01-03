require 'rails_helper' #um teste serve para saber a saída do que vamos criar, para ver se o resultado está saindo como esperado (entrada e saída de dados). 

describe ApiTest do 
    let(:api_test_v1) { ApiTest.new(version: 1) }
    let(:api_test_v2) { ApiTest.new(version: 2, default: true) }

    describe "matches?" do
        it "returns true when version matches the 'Accept' header" do 
            request = double(host: 'localhost:3000', 
                                      headers: {'Accept' => 'application/vnd.marketplace.v1'})
            expect(api_test_v1.matches?(request)).to be_truthy
        end
        it "returns default when version 'default' option is specific" do 
            request = double(host: 'localhost:3000')
            expect(api_test_v2.matches?(request)).to be_truthy
        end 
    end
end 