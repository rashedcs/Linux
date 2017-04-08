/* Problem Discription : 
   So recently I got invited to this google foo.bar challenge and I believe the code runs the way it should be. To be precise what I need to find is the number of occurrences of "abc" in a String. When I verify my code with them, I pass 3/10 test cases. I'm starting to feel bad because I don't know what I am doing wrong. I have written the code which I will share with you guys. Also the string needs to be less than 200 characters. When I run this from their website, I pass 3 tests and fail 7. Basically 7 things need to be right.

The actual question: Write a function called answer(s) that, given a non-empty string less than 200 characters in length describing the sequence of M&Ms. returns the maximum number of equal parts that can be cut from the cake without leaving any leftovers.

Example : Input : (string) s = "abccbaabccba"

output : (int) 2

Input: (string) s = "abcabcabcabc"

output : (int) 4
*/



//Solution : 
//package com.google.challenges; 

public class Answer
{
	  public static int answer(String s)
	   {
		     int answer = 0;
		     int size = s.length();
		     int first, second;
		 
		     int i = size;
		     while(i>0)
		     {           
		         int n = size/i;
		         if(n*i==size)
		         {
		            boolean flag = false;
		            String spilt = s.substring(0, n);
		           
		            for(int j=1; j<i; j++)
		            {
		               first = j*n;
		               second = j*n + n;
		               if(!s.substring(first, second).equals(spilt))
		               {
		                  flag = true;
		                  break;
		               }
		               else
		               {
		            	   continue;
		               }
		            }
		            
		            if(!flag)
		            {
		            	answer = i;
		                break;
		            }
		         }
		         
                         i--;
		     }
		     return answer;
	      }
    
   }
   
   
  
