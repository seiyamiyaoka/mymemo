# jリーぐとセリーグ, パリーグのオブジェクト群をfactoryと用いて作成して見る
class League
  attr_reader :name, :kind
  def initialize(args)
    @name = args[:l_name]
    @kind = args[:l_kind]
  end

  def description
   "リーグは#{@kind}です。#{name}の選手です" 
  end
end

class Player
  def initialize(args)
    @name = args[:name]
    @money = args[:money]
    @number = args[:number]
  end

  def description
    "#{@name}さんの年俸は#{@money}です。背番号は#{@number}です。"
  end
end

class AbstractSportFactory
  def initialize(args)
    @players = []
    @players << new_player(args) #個人的にここの関数の呼び方が痺れた
    @league = new_league(args)
  end

  def get_players
    @players
  end

  def get_league
    @league
  end
end

class BaseBallConcreateFactory < AbstractSportFactory
  def new_player(player)
    Player.new(player)
  end

  def new_league(league)
    League.new(league)
  end
end

class SoccerConcreateFactory < AbstractSportFactory
  def new_player(player)
    Player.new(player)
  end

  def new_league(league)
    League.new(league)
  end
end

baseball = BaseBallConcreateFactory.new({ name: 'イチロー',
                                          money: '2億円',
                                          number: 51,
                                          l_name: 'パリーグ',
                                          l_kind: '野球' }
                                       )
puts baseball.get_players.map(&:description)
puts baseball.get_league.description


soccer = SoccerConcreateFactory.new({ name: 'クリスティアーノ・ロナウド',
                                      money: '100億円',
                                      number: 7,
                                      l_name: 'セリエA',
                                      l_kind: 'サッカー' }
                                   )
puts soccer.get_players.map(&:description)
puts soccer.get_league.description
