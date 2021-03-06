module Private::Withdraws
  class BankController < ::Private::WithdrawsController
    def new
      @channel = WithdrawChannelBank.get
      @account = current_user.get_account(@channel.currency)
      @withdraw = ::Withdraws::Bank.new currency: @channel.currency, account: @account
      @fund_sources = current_user.fund_sources.with_channel(@channel.id)
      gon.banks = Bank.all.reduce({}){|memo, bank| memo[bank.code] = bank.name; memo}
      load_history(@channel.id)
    end
  end
end
