class Machine
  def initialize(name)
    @name=name
  end

  def Machine.all
    all = `VBoxManage list vms`
    all.scan(/"[^"]+"/).map{|s|Machine.new(s[1...-1])}
  end
end