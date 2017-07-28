def minilang(word)
  command_list = %w(PUSH ADD PRINT MULT POP SUB DIV MOD)
  register = 0
  stack = []

  command = word.split
  command.each do |task|
    if !(command_list.include?(task))
      register = task.to_i
    elsif task == 'PUSH'
        stack << register
    elsif task == 'ADD'
      register += stack.pop
    elsif task == 'PRINT'
      puts register
    elsif task == 'MULT'
      register *= stack.pop
    elsif task == 'POP'
      register = stack.pop
    elsif task == 'SUB'
      register -= stack.pop
    elsif task == 'DIV'
      register /= stack.pop
    elsif task == 'MOD'
      register %= stack.pop
    end
  end

end
