import 'dart:collection';

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    // 組み合わせの値のindexを配列で返却する
    List<int> result = [];

    final Map<int, int> searchedLists = HashMap();

    // 片方の値が決まっているので、比較した時にsecondが答えがどうかわかる
    for(int i = 0; i < nums.length; i++){


        int first = nums[i];
        int secound = target - first;
     
        if(searchedLists.containsKey(secound)){
            result.add(i);
            result.add(searchedLists[secound]!);
            return result;
        }
        else{
            searchedLists[first] = i;
        }

    }
      return result;
  }
}

// hashmapは一度見た記録を保存しておくノート
//どんな情報をペアにしておけば後から相方が見つかった時にスムーズにそのindexを取得できるか？
// mapには指定したkeyがmapの中に存在するかをtrue/falseで教えてくれるcontainsKeyがある


// - hashMapにあるメソッドの一覧を確認できるとよさそう


