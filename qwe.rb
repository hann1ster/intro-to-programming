# writes the number of lines then each line as a string.

def write_data_to_file(a_file)
   a_file.puts('5')
   a_file.puts('Fred')
   a_file.puts('Sam')
   a_file.puts('Jill')
   a_file.puts('Jenny')
   a_file.puts('Zorro')
end

# reads in each line.
# you need to change the following code
# so that it uses a loop which repeats
# acccording to the number of lines in the File
# which is given in the first line of the File
def read_data_from_file(a_file)
  count = a_file.gets.to_i()
  i = 0
  while i < count do
    puts a_file.gets()
    i += 1
  end
end

def creat_file(name)
  a_file = File.new(name, "w") # open for writing
  write_data_to_file(a_file)
  a_file.close()
end

def read_file(name)
  a_file = File.new(name, "r") # open for reading
  read_data_from_file(a_file)
  a_file.close()
end

# writes data to a file then reads it in and prints
# each line as it reads.
# you should improve the modular decomposition of the
# following by moving as many lines of code
# out of main as possible.
def main
  creat_file("mydata.txt")
  read_file("mydata.txt")
end

main
