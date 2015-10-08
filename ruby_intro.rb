=begin  
* ����ͷ��ע�Ϳ�ʼ    
* ����İ�Ȩ�Ͱ汾��������    
* Copyright (c) 2015, �й���ѧԺ��ѧ����������ѧԺ    
* All rights reserved.    
* �ļ����ƣ�ruby_intro.rb                           
* ��    �ߣ���ƹ�    
* ѧ    �ţ�201528013329024                          
* ������ڣ�2015�� 10��3��             
=end

# encoding: utf-8;

#������ͺ���sum��arr��������Ϊһ��������
def sum arr  
  # YOUR CODE HERE    
  
  if (arr.length == 0)  #�����鷵��0
    return 0;
  else 
    total = 0;
    arr.each {|x| total += x;} #�������
  end;
  
  return total;
  
end;


#�������������Ԫ�صĺͺ���max_2_sum��arr��������Ϊһ��������
def max_2_sum arr 
  # YOUR CODE HERE
  
  max_2 = 0;
  length = arr.size;
  if(length == 0) #�����鷵��0
    return 0;
  elsif(length == 1) #����ֻ��һ��Ԫ���򷵻ظ�Ԫ��
    return arr[0];
  else
    array_sort = Array.new(length); #��������������
    array_sort = arr.sort.reverse;  #��ԭ������������
    max_2 = array_sort.at(0) + array_sort.at(1); #��ǰ����Ԫ��֮�ͣ���Ϊԭ�������Ԫ��֮��
    return max_2;
  end;
  
end


#�ж��������Ƿ��������Ԫ��֮��ΪN�ĺ���sum_to_n?(arr, n)������1λһ�������飬����2λʵ��N
def sum_to_n? arr, n
  
  # YOUR CODE HERE
  length = arr.size;
  if (length == 0 ) #����Ϊ�գ�����false
     return false;
  end;
  
  array_sort = Array.new(length); #��������������
  array_sort = arr.sort; #ԭ�������򣬲�����array_sort
  low = 0;
  high = length -1;
  while (low < high) #�жϷ���
    if(array_sort[low] + array_sort[high] == n)
      return true; #�ҵ�����Ԫ��֮��ΪN���򷵻�true
    elsif(array_sort[low] + array_sort[high] < n)
      low = low + 1;
    else
      high = high - 1;
    end;
  end;
  return false; #û���ҵ�����Ԫ��֮��ΪN���򷵻�false
    
end


#�ַ������Ӻ���hello(name)������Ϊһ���ַ���
def hello(name)
  # YOUR CODE HERE
  
  str = "Hello, #{name}";
  return str;
  
end


#�ж��ַ����Ƿ��Ը�����ĸ��ͷ������Ϊһ���ַ���
def starts_with_consonant? s
  # YOUR CODE HERE
  
  if (s.empty? == true) #�ַ���Ϊ�գ�����false
    return false;
  end;
  
  str = s.upcase!; #���ַ���תΪ��д
  
  if (str[0]<'A' || str[0][0] >'Z') #�������ĸ����26��Ӣ����ĸ���򷵻�false
    return false;
  end;
  
  #�ų�Ԫ����ĸ
  if(str[0] == 'A' || str[0] == 'E' || str[0] == 'I' || str[0] == 'O' || str[0] == 'U')
      return false
  else 
    return true
  end;
  
end


#�ж϶��������Ƿ���4��������������Ϊһ���������ַ���
def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  if(s.length == 0) #�ַ���Ϊ�գ�����false
    return false;
  end
  
  for i in 0 .. s.length-1
    if(s[i] != '0' && s[i] != '1') #�ж��Ƿ�Ϊ��������
      return false;
     end;
  end;
  
  decimal = Integer("0b"+s); #���ַ���תΪʮ������
  puts decimal;
  if(decimal % 4 == 0) #�ж��Ƿ�Ϊ4�ı���
    return true;
  else 
    return false;
  end;
end


#BookInStock��
#�������ԣ�isbn��price
#�ĸ�������initialize(isbn,price)��price_as_string������get������set����
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn; :price; #��������
  
  def initialize(isbn,price) #��ʼ�������������ڹ��캯��
    if(isbn.length == 0 || price <= 0)
      raise ArgumentError; #�׳������쳣
    else 
      @isbn = isbn;
      @price = price;
    end;
  end
  
  
  def price_as_string #��priceת��Ϊָ����ʽ
    p = format("%.2f",@price);
    return "$#{p}";
  end
  
  attr_reader :price;:isbn; #get����
  attr_writer :price;:isbn; #set����
  
end

