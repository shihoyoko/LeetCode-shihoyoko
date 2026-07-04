// hashMapを使って解こうとしていたけど。HashMapは順番が重要になる時には使えない。
// matchStrings.values.toListで、順番が変わり、エラーになってしまった
// Mapを使うと順番は守られるが、Mapは重複キーが上書きされるので同じ文字列があると失敗する
    
    import 'dart:collection';
    // subsequenceである時-> 順番は変えないで、対象のcharが存在する
    // sの文字列がtに全て存在し、存在する時のindexの順序が昇順であれば良い
    class Solution {
    bool isSubsequence(String s, String t) {

        if(s == null || t == null) return false;


        // tをhashmap化し、sがtを探索する回数をOnにする
        Map<String,int> mapT = Map();
        for(int i = 0; i < t.length; i++){
            mapT[t[i]] = i;
        }

        // sの文字列がtに含まれているかチェックする
        //　含まれている場合には{char : index}でhashmapに格納する

        //{マッチした文字列* tのindex}
        Map<String, int> matchStrings = Map();
        for(int i = 0; i < s.length; i++){
            
            if(mapT.containsKey(s[i])){
                matchStrings[s[i]] = mapT[s[i]]!;
            }
            else{
                // 文字数分がmatchStringsに格納されなかった時には、falseなのでその時点でresultを返す
                return false;
            }
        }

        if(matchStrings == null) return false;

        // Mapから「値」だけのリストを作る
        List<int> indexList = matchStrings.values.toList();
        // matchStringsの中身のindexが昇順か確認する
        for(int i = 0; i < indexList.length - 1; i++){
            int left = indexList[i];
            int right = indexList[i + 1];
            if(left > right){
                return false;
            }
        }
        return true;
    }

    }
