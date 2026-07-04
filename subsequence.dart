
    
    import 'dart:collection';
    class Solution {
    bool isSubsequence(String s, String t) {
        int sPointer = 0;
        int tPointer = 0;

        while(sPointer < s.length && t.length > tPointer){
            // 同じ値があったらSを進める
            if(s[sPointer] == t[tPointer]){
                sPointer++;
            }

            tPointer++;
        } 

        if(sPointer == s.length){
            return true;
        }

        return false;

    }
    }
