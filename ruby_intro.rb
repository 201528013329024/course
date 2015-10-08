=begin  
* 程序头部注释开始    
* 程序的版权和版本声明部分    
* Copyright (c) 2015, 中国科学院大学计算机与控制学院    
* All rights reserved.    
* 文件名称：ruby_intro.rb                           
* 作    者：徐浩广    
* 学    号：201528013329024                          
* 完成日期：2015年 10月3日             
=end

# encoding: utf-8;

#数组求和函数sum（arr），参数为一整形数组
def sum arr  
  # YOUR CODE HERE    
  
  if (arr.length == 0)  #空数组返回0
    return 0;
  else 
    total = 0;
    arr.each {|x| total += x;} #数组求和
  end;
  
  return total;
  
end;


#求数组最大两个元素的和函数max_2_sum（arr），参数为一整形数组
def max_2_sum arr 
  # YOUR CODE HERE
  
  max_2 = 0;
  length = arr.size;
  if(length == 0) #空数组返回0
    return 0;
  elsif(length == 1) #数组只有一个元素则返回该元素
    return arr[0];
  else
    array_sort = Array.new(length); #定义排序后的数组
    array_sort = arr.sort.reverse;  #将原数组逆序排列
    max_2 = array_sort.at(0) + array_sort.at(1); #求前两个元素之和，即为原数组最大元素之和
    return max_2;
  end;
  
end


#判断数组中是否存在两个元素之和为N的函数sum_to_n?(arr, n)，参数1位一整形数组，参数2位实数N
def sum_to_n? arr, n
  
  # YOUR CODE HERE
  length = arr.size;
  if (length == 0 ) #数组为空，返回false
     return false;
  end;
  
  array_sort = Array.new(length); #创建排序后的数组
  array_sort = arr.sort; #原数组排序，并赋给array_sort
  low = 0;
  high = length -1;
  while (low < high) #判断方法
    if(array_sort[low] + array_sort[high] == n)
      return true; #找到两个元素之和为N，则返回true
    elsif(array_sort[low] + array_sort[high] < n)
      low = low + 1;
    else
      high = high - 1;
    end;
  end;
  return false; #没有找到两个元素之和为N，则返回false
    
end


#字符串连接函数hello(name)，参数为一个字符串
def hello(name)
  # YOUR CODE HERE
  
  str = "Hello, #{name}";
  return str;
  
end


#判断字符串是否以辅音字母开头，参数为一个字符串
def starts_with_consonant? s
  # YOUR CODE HERE
  
  if (s.empty? == true) #字符串为空，返回false
    return false;
  end;
  
  str = s.upcase!; #将字符串转为大写
  
  if (str[0]<'A' || str[0][0] >'Z') #如果首字母不是26个英文字母，则返回false
    return false;
  end;
  
  #排除元音字母
  if(str[0] == 'A' || str[0] == 'E' || str[0] == 'I' || str[0] == 'O' || str[0] == 'U')
      return false
  else 
    return true
  end;
  
end


#判断二进制数是否是4的正数倍，参数为一个二进制字符串
def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  if(s.length == 0) #字符串为空，返回false
    return false;
  end
  
  for i in 0 .. s.length-1
    if(s[i] != '0' && s[i] != '1') #判断是否为二进制数
      return false;
     end;
  end;
  
  decimal = Integer("0b"+s); #将字符串转为十进制数
  puts decimal;
  if(decimal % 4 == 0) #判断是否为4的倍数
    return true;
  else 
    return false;
  end;
end


#BookInStock类
#两个属性：isbn，price
#四个方法：initialize(isbn,price)，price_as_string（），get方法，set方法
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn; :price; #两个属性
  
  def initialize(isbn,price) #初始化函数，类似于构造函数
    if(isbn.length == 0 || price <= 0)
      raise ArgumentError; #抛出参数异常
    else 
      @isbn = isbn;
      @price = price;
    end;
  end
  
  
  def price_as_string #将price转换为指定格式
    p = format("%.2f",@price);
    return "$#{p}";
  end
  
  attr_reader :price;:isbn; #get方法
  attr_writer :price;:isbn; #set方法
  
end

