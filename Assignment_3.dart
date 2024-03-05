

import 'dart:io';


void main(){
//  Given an integer array nums sorted in non-decreasing order, return an array of the
//squares of each number sorted in non-decreasing order.
  List<int> numberList1 = [-4,-1,0,3,10];
  numberList1=sortAndSquareNumbers(numberList1);
  print(numberList1);


// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
// You may assume that each input would have exactly one solution, and you may not use the same element twice.
// You can return the answer in any order.
  List<int> numberList2 = [3, 2, 4];
  int result = 6;
  List<int> ans = targetNum(numberList2, result);
  print(ans);
  numberList2 = [2, 7, 11, 15];
  result = 9;
  ans = targetNum(numberList2, result);
  print(ans);



// Given a string s, find the length of the longest
// substring
// without repeating characters.
  print(longestSubsequence("abcabcbb")); // 3
print(longestSubsequence("bbbbb")); // 1
print(longestSubsequence("pwwkew")); //3


// Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result 
// must appear as many times as it shows in both arrays and you may return the result in any order.
  numberList1 = [2, 7, 11, 15];
  numberList2=[2, 2];
  List<int>resultOfIntersection=intersectionOfArrays(numberList1, numberList2);
  print(resultOfIntersection);

  numberList1 = [4,9,5];
  numberList2=[9,4,9,8,4];
  resultOfIntersection=intersectionOfArrays(numberList1, numberList2);
  print(resultOfIntersection);



// Given two strings s and t, return true if t is an anagram of s, and false otherwise.
// An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

   List<String>str1=["anagram"];
   List<String>str2=["nagaram"];
  bool ansOfAnagram=anagram(str1, str2);
  print(ansOfAnagram);

  str1=["rat"];
  str2=["car"];
  ansOfAnagram=anagram(str1, str2);
  print(ansOfAnagram);



// Implement Inorder, preorder and postorder traversal of tree. 
// Use the below class to construct your tree data structure.

TreeNode root = TreeNode(1,null,null);
TreeNode node1 = TreeNode(2,null,null);
TreeNode node2 = TreeNode(3,null,null);

root.left = node1;
root.right = node2;

stdout.write("Preorder Traversal : ");
preorder(root);

stdout.write("\nInorder Traversal : ");
inorder(root);

stdout.write("\nPostorder Traversal : ");
postorder(root);
print("\n");


// Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
  int number =3;
  print("$number in Roman number is-> ${intToRoman(number)}"); //III
   number = 58;
  print("$number in Roman number is->: ${intToRoman(number)}"); //LVIII
   number = 1994;
  print("$number in Roman number is->: ${intToRoman(number)}"); //MCMXCIV


//  Given an input string s, reverse the order of the words.
// A word is defined as a sequence of non-space characters. The words in s will be separated by at least one space.
// Return a string of the words in reverse order concatenated by a single space.
  String str="the sky is blue";
  String reversedString=reverseWordsOfString(str);
  print(reversedString);

  str="  hello   world  ";
  reversedString=reverseWordsOfString(str);
  print(reversedString);

}

//Given an integer array nums sorted in non-decreasing order, return an array of the
//squares of each number sorted in non-decreasing order.
List<int> sortAndSquareNumbers(List<int> numberList1){
  List<int> listOfSquares=[0];
  for(int counter=0; counter<numberList1.length; counter++){
      listOfSquares = numberList1.map((numberList1) => numberList1 * numberList1).toList();

  }
  listOfSquares.sort();

  return listOfSquares;
}


// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
// You may assume that each input would have exactly one solution, and you may not use the same element twice.
// You can return the answer in any order.
List<int> targetNum(List<int>numberList2, int result){
  Map<int, int> numMap = {};

  for(int counter=0; counter<numberList2.length; counter++){
    int diff=0;
    int number=numberList2[counter];
    diff=result-number;
    if(numMap.containsKey(diff)){
      return [numMap[diff]!, counter];

    }
    numMap[number]=1;

  }
  return [];


}


// Given a string s, find the length of the longest
// substring
// without repeating characters.
int longestSubsequence(String str){
  // List<int>vector=[0];
  Map<String, int> charMap={};
  int maxLen=0, start=-1;

  for(int counter=0; counter<str.length; counter++){
    String char=str[counter];
    if(charMap.containsKey(char) && charMap[char]!>start){
            start = charMap[char]!;
    }

    charMap[char]=counter;
    maxLen = (maxLen > counter - start) ? maxLen : counter - start;

  }
  return maxLen;
}


// Given two integer arrays nums1 and nums2, return an array of their intersection. Each 
// element in the result must appear as many times as it shows in both arrays and you may return the result in any order.
 
 List<int> intersectionOfArrays(List<int>list1, List<int>list2){
    Map<int, int> countMap = {};
    List <int> result=[];
    for(int counter=0; counter<list1.length; counter++){
      int number=list1[counter];
    countMap[number] = (countMap[number] ?? 0) + 1;

    }
    for(int counter=0; counter<list2.length; counter++){
      int number=list2[counter];
      if(countMap.containsKey(number) && list2[counter]>1){
            result.add(number);
        countMap[number]=countMap[number]!-1;

      }
    }

  return result;
 }



// Given two strings s and t, return true if t is an anagram of s, and false otherwise.
// An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

bool anagram( List<String> str1, List<String> str2) {

  
  Map<String, int> countMap = {};
  
  for (int counter = 0; counter < str1.length; counter++) {
    countMap[str1[counter]] = (countMap[str1[counter]] ?? 0) + 1;
  }

  for (int counter = 0; counter < str2.length; counter++) {
    if (!countMap.containsKey(str2[counter]) || countMap[str2[counter]] == 0) {
      return false; 
    }
    countMap[str2[counter]] = countMap[str2[counter]]! - 1;
  }

  return true; 
}


// Implement Inorder, preorder and postorder traversal of tree. 
// Use the below class to construct your tree data structure.

class TreeNode{

  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val,this.left,this.right);
    
}

void preorder(TreeNode? root){

  if(root == null){
    return;
  }
  stdout.write("${root.val} ");
  preorder(root.left);
  preorder(root.right);
}

void inorder(TreeNode? root){

  if(root == null){
    return;
  }
  preorder(root.left);
  stdout.write("${root.val} ");
  preorder(root.right);
}

void postorder(TreeNode? root){

  if(root == null){
    return;
  }
  postorder(root.left);
  postorder(root.right);
  stdout.write("${root.val} ");
}


// Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
// Symbol       Value
// I             1
// V             5
// X             10
// L             50
// C             100
// D             500
// M             1000
// For example, 2 is written as II in Roman numeral, just two one's added together. 
//12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

String intToRoman(int num) {
  List<String> romanSymbols = ["M", "CM", "D", 
  "CD", "C", "XC",
  "L", "XL", "X", "IX", 
  "V", "IV", "I"];
  List<int> values = [1000, 900, 500, 
  400, 100, 90, 
  50, 40, 10,
  9, 5, 4, 1];
  
  String result = '';
  int index = 0;
  
  while (num > 0) {
    while (num >= values[index]) {
      num -= values[index];
      result += romanSymbols[index];
    }
    index++;
  }
  
  return result;
}


// Given an input string s, reverse the order of the words.
// A word is defined as a sequence of non-space characters. The words in s will be separated by at least one space.
// Return a string of the words in reverse order concatenated by a single space.


String reverseWordsOfString(String str) {

    List<String> words = str.split(' ');
     String tempString='';
    for(int counter=words.length-1; counter>0; counter--){
      if(words[counter]!=''){
          tempString=tempString+words[counter]+' ';

      }
    }    
  return tempString.trim();

}
