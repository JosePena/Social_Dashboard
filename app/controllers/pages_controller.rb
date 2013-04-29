class PagesController < ApplicationController

  Type1 = 1
  Type2 = 2
  Type3 = 3
  Type4 = 4
  Type5 = 5
  Type6 = 6
  Type7 = 7
  Type8 = 8
  Type9 = 9
  Type10 = 10
  Type11 = 11
  Type12 = 12
  Type13 = 13
  Type14 = 14
  Type15 = 15
  Type16 = 16
  Type17 = 17
  Type18 = 18
  Type19 = 19
  Type20 = 20
  Type21 = 21
  Type22 = 22
  Type23 = 23
  Type24 = 24
  Type25 = 25
  Type26 = 26
  Type27 = 27
  Type28 = 28
  Type29 = 29
  Type30 = 30
  Type31 = 31
  Type32 = 32
  Type33 = 33
  Type34 = 34
  Type35 = 35
  Type36 = 36
  Type37 = 37
  Type38 = 38
  Type39 = 39
  Type40 = 40
  Type41 = 41
  Type42 = 42
  Type43 = 43
  Type44 = 44
  Type45 = 45
  Type46 = 46
  Type47 = 47
  Type48 = 48
  Type49 = 49
  Type50 = 50
  Type51 = 51
  Type52 = 52
  Type53 = 53
  Type54 = 54
  Type55 = 55
  Type56 = 56
  Type57 = 57
  Type58 = 58
  Type59 = 59
  Type60 = 60
  Type61 = 61
  Type62 = 62
  Type63 = 63
  Type64 = 64
  Type65 = 65
  Type66 = 66
  Type67 = 67
  Type68 = 68
  Type69 = 69
  Type70 = 70
  Type71 = 71
  Type72 = 72
  Type73 = 73
  Type74 = 74
  Type75 = 75
  Type76 = 76
  Type77 = 77
  TypePMing = 78
  TypePMond = 79
  TypePSkol = 80
  TypeLPMing = 81
  TypeLPMond = 82
  TypeLPSkol = 83
  TypeNPMing = 84
  TypeNPMond = 85
  TypeNPSkol = 86
 

  def index
    require 'date'


    # Update Charts Form
    if params.has_key?(:start_date)
      @date1 = Date.civil(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i)
    else 
      @date1 = Date.today - 29
    end
    if params.has_key?(:end_date)
      @date2 = Date.civil(params[:end_date][:year].to_i, params[:end_date][:month].to_i, params[:end_date][:day].to_i)
    else 
      @date2 = Date.today
    end



    #Set dates
    today = Date.today 
    date1 = (Date.today - 7).to_s 
    date2 = (Date.today).to_s

    # Mingoville Paying Users 
    @mingPayUsers = rand(1000)

    # Mingoville New Paying Users 
    @mingNPayUsers = rand(1000)

    # Mingoville Leaving Paying Users 
    @mingLPayUsers = rand(1000)

  	# Mingoville Users 
    @mingUsers = rand(1000)

    # Mingoville Active Accounts 
    @mingAAccounts = rand(1000)

    # Mingoville Licensed Users 
    @mingAUsers = rand(1000)

    # Mingoville New Accounts 
  	@mingNAccounts = rand(1000)

    # Mingoville New Licenses 
    @mingNLic = rand(1000)

    # Mingoville Expiring Accounts 
  	@mingEAccounts = rand(1000)

    # Mingoville Expiring Licenses 
    @mingELic = rand(1000)


    # Skolemat Paying Users 
    @skolPayUsers = rand(1000)
    # Skolemat New Paying Users 
    @skolNPayUsers = rand(1000)
    # Skolemat Leaving Paying Users 
    @skolLPayUsers = rand(1000)
  	# Skolemat Users 
    @skolUsers = rand(1000)
    # Skolemat Active Accounts 
    @skolAAccounts = rand(1000)
    # Skolemat Licensed Users 
    @skolAUsers = rand(1000)
    # Skolemat New Accounts 
    @skolNAccounts = rand(1000)
    # Skolemat New Licenses 
    @skolNLic = rand(1000)
    # Skolemat Expiring Accounts 
  	@skolEAccounts = rand(1000)
    # Skolemat Expiring Licenses 
    @skolELic = rand(1000)

    # Mondiso Paying Users 
    @mondPayUsers = rand(1000)
    # Skolemat New Paying Users 
    @mondNPayUsers = rand(1000)
    # Mingoville Leaving Paying Users 
    @mondLPayUsers = rand(1000)
  	# Mondiso Users 
    @mondUsers = rand(1000)
    # Mondiso Active Accounts 
    @mondAAccounts = rand(1000)
    # Mondiso Licensed Users 
    @mondAUsers = rand(1000)
    # Mondiso New Accounts 
    @mondNAccounts = rand(1000)
    # Mondiso New Licenses 
    @mondNLic = rand(1000)
    # Mondiso Expiring Accounts 
  	@mondEAccounts = rand(1000)
    # Mondiso Expiring Licenses 
    @mondELic = rand(1000)

    #Mingoville traffic.
    @mingTraffic = Array.new()
    i = 0
    
    @date1.upto(@date2) do |day|
      @mingTraffic.insert(i,rand(100))
      i = i+1
    end
    #Skolemat traffic.
    @skolTraffic = Array.new()
    i = 0
    
    @date1.upto(@date2) do |day|
      @skolTraffic.insert(i,rand(100))
      i = i+1
    end
    #Mondiso traffic.
    @mondTraffic = Array.new()
    i = 0
    
    @date1.upto(@date2) do |day|
      @mondTraffic.insert(i,rand(100))
      i = i+1
    end


    # Income.
    
    mingoMonthIncome = 19902



    skolMonthIncome = 29900

    mondMonthIncome = 14900
    agregateMonthIncome = mingoMonthIncome + skolMonthIncome + mondMonthIncome

    z = 0
    @lastMonth = Array.new()
    @currentMonth = Array.new()
    (Date.today - 29).upto(Date.today) do |day|
      @lastMonth.insert(z,agregateMonthIncome/100)
      z = z+1
    end

  
    z = 0
    (Date.today - 29).upto(Date.today) do |day|
 
      dayIncome = 2 * 15000
      @currentMonth.insert(z, rand(100900)/100)
      z = z + 1      
    end


  end
  



  
  def mingoville

    # Weekly Stats

     # Update Charts Form
    if params.has_key?(:start_date)
      @date1 = Date.civil(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i)
    else 
      @date1 = Date.today - 29
    end
    if params.has_key?(:end_date)
      @date2 = Date.civil(params[:end_date][:year].to_i, params[:end_date][:month].to_i, params[:end_date][:day].to_i)
    else 
      @date2 = Date.today
    end

    #Set dates
    today = Date.today
    date1 = (Date.today - 7).to_s 
    date2 = (Date.today).to_s

  	# Mingoville institutional users

    # Institutional Active Accounts 
    @mingITAccounts = rand(1000)

    # Institutional Active Accounts 
    @mingIAccounts = rand(1000)

    # Institutional Licenses
    @mingILic = rand(1000)

    # Institutional New Licenses 
  	@mingNIUsers = rand(1000)

    # Institutional New Accounts 
    @mingNIAccounts = rand(1000)

    # Institutional expiring Accounts 
  	@mingLIAccounts = rand(1000)

    # Institutional expiring Licenses 
    @mingLILic = rand(1000)



    # Mingoville Private users

    # Mingoville Paying Users 
    @mingPayUsers = rand(1000)

    # Mingoville New Paying Users 
    @mingNPayUsers = rand(1000)

    # Mingoville Leaving Paying Users 
    @mingLPayUsers = rand(1000)

    # Private Active Accounts 
    @mingPTAccounts = rand(1000)

    # Private Active Accounts 
    @mingPAccounts = rand(1000)

    # Private Licenses
    @mingPLic = rand(1000)

    # Private New Licenses 
    @mingNPUsers = rand(1000)

    # Private New Accounts 
    @mingNPAccounts = rand(1000)

    # Private expiring Accounts 
    @mingLPAccounts = rand(1000)

    # Private expiring Licenses 
    @mingLPLic = rand(1000)


  	# Mingoville free trial users

    # Total registered accounts 
    @mingFAccounts = rand(1000)

    # Total active accounts 
    @mingFUsers = rand(1000)

    # Total active trials 
    @mingFTrials = rand(1000)

    # New Trial Accounts 
  	@mingNFUsers = rand(1000)

    # Expiring Trials 
    @mingLFTrials = rand(1000)

    # Expiring Trial Accounts 
  	@mingLFUsers = rand(1000)


    #Monthly traffic


    @mingInstTraffic = Array.new()
    @mingPrivTraffic = Array.new()
    @mingFreeTraffic = Array.new()

    i = 0
    @date1.upto(@date2) do |day|

        @mingInstTraffic.insert(i,rand(100))

        @mingPrivTraffic.insert(i,rand(100))

        @mingFreeTraffic.insert(i,rand(100))


      i = i+1
    end

    # Income.
    mingoMonthIncome = 299000


    z = 0
    @lastMonth = Array.new()
    @currentMonth = Array.new()
    (Date.today - 29).upto(Date.today) do |day|
      @lastMonth.insert(z,mingoMonthIncome/100)
      z = z+1
    end

    z = 0
    (Date.today - 29).upto(Date.today) do |day|
      @currentMonth.insert(z, rand(800000)/100)
      z = z + 1      
    end





  end





def virtual_mingoville
  
end





def classic_mingoville
end





def skol_popular
end





def mond_popular
end





def mingo_transactions
     # Update Charts Form
    if params.has_key?(:start_date)
      @date1 = Date.civil(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i)
    else 
      @date1 = Date.today - 29
    end
    if params.has_key?(:end_date)
      @date2 = Date.civil(params[:end_date][:year].to_i, params[:end_date][:month].to_i, params[:end_date][:day].to_i)
    else 
      @date2 = Date.today
    end

    #Transactions information
    @mingTransactions1 = Array.new()
    @mingTransactions2 = Array.new()
    @mingTransactions3 = Array.new()
    @mingCountries1 = Array.new()
    @mingCountries2 = Array.new()
    @mingCountries3 = Array.new()
    @sub = Array.new()
    @price = Array.new()
    income = 0.0
    three = 0
    six = 0
    twelve = 0

    i = 0

    # Subscription periods.
      @sub[0] = 3
      @sub[1] = 6
      @sub[2] = 12
    

    @date1.upto(@date2) do |day|
      j = rand(6)
      @mingTransactions1.insert(i,j)
      if j > 0
        @mingCountries1[i] = "" 
          @mingCountries1[i] = @mingCountries1[i] + "Denmark" + ". "
      else
        @mingCountries1[i] = ""
      end
      income = income + j * 199
      three = three + j
      i = i+1
    end

    i = 0
    @date1.upto(@date2) do |day|
      j = rand(4)
      @mingTransactions2.insert(i,j)
      if j > 0
        @mingCountries2[i] = "" 
          @mingCountries2[i] = @mingCountries2[i] + "Spain" + ". "
      else
        @mingCountries2[i] = ""
      end
      income = income + j * 299
      six = six + j
      i = i+1
    end

    i = 0
    @date1.upto(@date2) do |day|
      j = rand(3)
      @mingTransactions3.insert(i,j)
      if j > 0
        @mingCountries3[i] = "" 
          @mingCountries3[i] = @mingCountries3[i] + "Denmark" + ". "
      else
        @mingCountries3[i] = ""
      end
      income = income + j * 500
      twelve = twelve + j
      i = i+1
    end


    @income = income
    @three = three
    @six = six
    @twelve = twelve

end





def skol_transactions

     # Update Charts Form
    if params.has_key?(:start_date)
      @date1 = Date.civil(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i)
    else 
      @date1 = Date.today - 29
    end
    if params.has_key?(:end_date)
      @date2 = Date.civil(params[:end_date][:year].to_i, params[:end_date][:month].to_i, params[:end_date][:day].to_i)
    else 
      @date2 = Date.today
    end

    #Transactions information
    @skolTransactions = Array.new()
    income = 0.0
    twelve = 0

    i = 0
    @date1.upto(@date2) do |day|
      j = rand(7)
      income = income + j * 299
      twelve = twelve + j
      @skolTransactions.insert(i,j)
      i = i+1
    end

    @income = income
    @three = 0
    @six = 0
    @twelve = twelve

    
end





def mond_transactions

     # Update Charts Form
    if params.has_key?(:start_date)
      @date1 = Date.civil(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i)
    else 
      @date1 = Date.today - 29
    end
    if params.has_key?(:end_date)
      @date2 = Date.civil(params[:end_date][:year].to_i, params[:end_date][:month].to_i, params[:end_date][:day].to_i)
    else 
      @date2 = Date.today
    end

    #Transactions information
    @mondCountries = Array.new()
    @mondTransactions = Array.new()
    income = 0.0
    twelve = 0

    i = 0
    @date1.upto(@date2) do |day|
      j = j = rand(4)
      @mondTransactions.insert(i,j)
      if j > 0
        @mondCountries[i] = "Denmark" 
      else
        @mondCountries[i] = ""
      end

      income = income + j * 299
      twelve = twelve + j
      i = i+1
    end

    @income = income
    @three = 0
    @six = 0
    @twelve = twelve

     # Income.

    
    mondMonthIncome = (29900 * rand(40)) / 30

    z = 0
    @lastMonth = Array.new()
    @currentMonth = Array.new()
    (Date.today - 29).upto(Date.today) do |day|
      @lastMonth.insert(z,mondMonthIncome/100)
      z = z+1
    end

    z = 0
    (Date.today - 29).upto(Date.today) do |day|
      dayIncome = 0
      dayIncome = dayIncome + (rand(4) * 29900)
      @currentMonth.insert(z, dayIncome/100)
      z = z + 1      
    end

end





def mingo_zone_distribution
end





def mond_zone_distribution
end





  def skolemat

    # Update Charts Form
    if params.has_key?(:start_date)
      @date1 = Date.civil(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i)
    else 
      @date1 = Date.today - 29
    end
    if params.has_key?(:end_date)
      @date2 = Date.civil(params[:end_date][:year].to_i, params[:end_date][:month].to_i, params[:end_date][:day].to_i)
    else 
      @date2 = Date.today
    end

    # Set Dates

    date1 = (Date.today - 7).to_s 
    date2 = (Date.today).to_s
    today = Date.today
  	
    # Skolemat institutional users

    # Institutional Total Accounts 
    @skolITAccounts = rand(1000)

    # Institutional Active Accounts 
    @skolIAccounts = rand(1000)

    # Institutional Licenses 
    @skolILic = rand(1000)

    # Institutional New Licenses 
    @skolNIUsers = rand(1000)

    # Institutional New Accounts 
    @skolNIAccounts = rand(1000)

    # Institutional expiring Accounts 
    @skolLIAccounts = rand(1000)

    # Institutional expiring Licenses 
    @skolLILic = rand(1000)



    # Skolemat Private users

    # Skolemat Paying Users 
    @skolPayUsers = rand(1000)
    # Skolemat New Paying Users 
    @skolNPayUsers = rand(1000)
    # Skolemat Leaving Paying Users 
    @skolLPayUsers = rand(1000)

    # Private Active Accounts 
    @skolPTAccounts = rand(1000)

    # Private Active Accounts 
    @skolPAccounts = rand(1000)

    # Private Licenses 
    @skolPLic = rand(1000)

    # Private New Licenses 
    @skolNPUsers = rand(1000)

    # Private New Accounts 
    @skolNPAccounts = rand(1000)

    # Private expiring Accounts 
    @skolLPAccounts = rand(1000)

    # Private expiring Licenses 
    @skolLPLic = rand(1000)


    # Skolemat free trial users

    # Total registered accounts 
    @skolFAccounts = rand(1000)

    # Total active accounts 
    @skolFUsers = rand(1000)

    # New Trial Accounts 
    @skolNFUsers = rand(1000)

    # Expiring Trial Accounts 
    @skolLFUsers = rand(1000)
    
    #Monthly traffic

    @skolInstTraffic = Array.new()
    @skolPrivTraffic = Array.new()
    @skolFreeTraffic = Array.new()

    i = 0
    @date1.upto(@date2) do |day|

        @skolInstTraffic.insert(i,rand(100))

        @skolPrivTraffic.insert(i,rand(100))

        @skolFreeTraffic.insert(i,rand(100))


      i = i+1
    end

# Income.
    mingoMonthIncome = 299000


    z = 0
    @lastMonth = Array.new()
    @currentMonth = Array.new()
    (Date.today - 29).upto(Date.today) do |day|
      @lastMonth.insert(z,mingoMonthIncome/100)
      z = z+1
    end

    z = 0
    (Date.today - 29).upto(Date.today) do |day|
      @currentMonth.insert(z, rand(800000)/100)
      z = z + 1      
    end



  end





  def mondiso

    # Update Charts Form
    if params.has_key?(:start_date)
      @date1 = Date.civil(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i)
    else 
      @date1 = Date.today - 29
    end
    if params.has_key?(:end_date)
      @date2 = Date.civil(params[:end_date][:year].to_i, params[:end_date][:month].to_i, params[:end_date][:day].to_i)
    else 
      @date2 = Date.today
    end

    # Set Dates
    date1 = (Date.today - 7).to_s 
    date2 = (Date.today).to_s
    today = Date.today

  	# Mondiso institutional users

    # Institutional Active Accounts 
    @mondITAccounts = rand(1000)

    # Institutional Active Accounts  
    @mondIAccounts = rand(1000)

    # Institutional Licenses 
    @mondILic = rand(1000)

    # Institutional New Licenses 
    @mondNIUsers = rand(1000)

    # Institutional New Accounts 
    @mondNIAccounts = rand(1000)

    # Institutional expiring Accounts 
    @mondLIAccounts = rand(1000)

    # Institutional expiring Licenses 
    @mondLILic = rand(1000)

    # Mondiso Private users

    # Mondiso Paying Users 
    @mondPayUsers = rand(1000)
    # Skolemat New Paying Users 
    @mondNPayUsers = rand(1000)
    # Mingoville Leaving Paying Users 
    @mondLPayUsers = rand(1000)

    # Private Active Accounts 
    @mondPTAccounts = rand(1000)

    # Private Active Accounts 
    @mondPAccounts = rand(1000)

    # Private Licenses 
    @mondPLic = rand(1000)

    # Private New Licenses 
    @mondNPUsers = rand(1000)

    # Private New Accounts 
    @mondNPAccounts = rand(1000)

    # Private expiring Accounts 
    @mondLPAccounts = rand(1000)

    # Private expiring Licenses 
    @mondLPLic = rand(1000)


    # Mondiso free trial users

    # Total registered accounts 
    @mondFAccounts = rand(1000)

    # Total active accounts 
    @mondFUsers = rand(1000)

    # New Trial Accounts 
    @mondNFUsers = rand(1000)

    # Expiring Trial Accounts
    @mondLFUsers = rand(1000)


    #Monthly traffic

    @mondInstTraffic = Array.new()
    @mondPrivTraffic = Array.new()
    @mondFreeTraffic = Array.new()

    i = 0
    @date1.upto(@date2) do |day|

        @mondInstTraffic.insert(i,rand(100))

        @mondPrivTraffic.insert(i,rand(100))

        @mondFreeTraffic.insert(i,rand(100))


      i = i+1
    end

    # Income.
    mingoMonthIncome = 299000


    z = 0
    @lastMonth = Array.new()
    @currentMonth = Array.new()
    (Date.today - 29).upto(Date.today) do |day|
      @lastMonth.insert(z,mingoMonthIncome/100)
      z = z+1
    end

    z = 0
    (Date.today - 29).upto(Date.today) do |day|
      @currentMonth.insert(z, rand(800000)/100)
      z = z + 1      
    end


  end

end
