require "./lags"

describe "Lags" do

    context "one flight" do
        it "return price" do
            expect(optimal_price([[0,2,9]])).to eq(9)
        end
        it "return price" do
            expect(optimal_price([[1,5,10]])).to eq(10)
        end
    end

    context "two flights, no combination possible" do
        it "return highest price" do
            expect(optimal_price([[0,2,9], [1,5,10]])).to eq(10)
        end
    end

    context "three flights, one combination" do
        it "return highest combined price" do
            expect(optimal_price([[0,2,9], [1,5,10], [3,6,6]])).to eq(15)
        end
    end

    context "three flights, two combination" do
        it "return highest combined price" do
            expect(optimal_price([[0,2,9], [1,5,9], [12,6,6]])).to eq(15)
        end
    end

    context "four flights, two combination" do
        it "return highest combined price" do
            expect(optimal_price([[0,2,9], [1,5,10], [4,6,6], [6,3,5]])).to eq(15)
        end
    end

end