/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func hasCycle(head *ListNode) bool {

    if head == nil || head.Next == nil{
        return false;
    }
        
    //うさぎとかめがいる
    fast := head
    slow := head

    for{
        if fast != nil && fast.Next != nil {
            fast = fast.Next.Next
            slow = slow.Next
        }else {
            return false
        }

        if fast == slow {
            return true
        }
    }

        return false

 }
