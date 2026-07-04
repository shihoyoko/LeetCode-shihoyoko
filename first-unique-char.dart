import 'dart:collection';

class Solution {
  int firstUniqChar(String s) {

    Map<String,int> searchedStrings = HashMap();
    int result = -1;
    // sを１文字ずつに分割しMapに表示回数を格納していく
    for(int i = 0; i < s.length; i++){
        if(searchedStrings.containsKey(s[i])){
            int index = searchedStrings[s[i]]!;
            index++;
            searchedStrings[s[i]] = index;
        }
        else{
            //初めて見た数字ということになるので、keyを文字列の値で、index(value)を1にセットする
            searchedStrings[s[i]] = 1;
        }
    }

    // hashMap tableのvalueが小さい値（->1と書かれている）で一番最初に入っているものを探す
    for(int i = 0; i < s.length; i++){
        String char = s[i];
        if(searchedStrings[char] == 1){
            result = i;
            return result;
        }
    }
    return result;
  }
}
