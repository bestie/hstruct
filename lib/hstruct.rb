class HStruct < Struct
  def initialize(args)
    super(*members.map { |m| args[m] })
  end

  def to_hash
    Hash[each_pair.to_a]
  end
end