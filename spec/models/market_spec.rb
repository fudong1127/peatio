require 'spec_helper'

describe Market do

  subject { Market.find('cnybtc') }

  its(:id)          { should == 'cnybtc' }
  its(:name)        { should == 'BTC/CNY' }
  its(:target_unit) { should == 'btc' }
  its(:price_unit)  { should == 'cny' }

end
