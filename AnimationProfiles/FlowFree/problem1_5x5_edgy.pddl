; Title: FlowFree Problem1-5x5 (Edgy Strategy)
; Author: Aditi Basu (University of Melbourne)

(define (problem FlowFree-5x5)
    (:domain FlowFree)
    (:objects 
        r y g b dummy - dot
        node1-5 node2-5 node3-5 node4-5 node5-5 - node
        node1-4 node2-4 node3-4 node4-4 node5-4 - node
        node1-3 node2-3 node3-3 node4-3 node5-3 - node
        node1-2 node2-2 node3-2 node4-2 node5-2 - node
        node1-1 node2-1 node3-1 node4-1 node5-1 - node
    )

    (:init
        ; head relations
        (head node1-5 r) (head node2-5 y)
        (head node2-4 g)
        (head node2-2 b) 

        ; filled relations
        ; the 'starting' positions
        (filled node1-5 r) (filled node2-5 y)
        (filled node2-4 g)
        (filled node2-2 b)
        ; the 'destinations'
        (filled node4-4 g) 
        (filled node2-3 y)
        (filled node5-2 b)
        (filled node5-1 r) 

        ; nextToEdge relations - outermost cells
        (nextToEdge node1-1) (nextToEdge node1-2) (nextToEdge node1-3) (nextToEdge node1-4) (nextToEdge node1-5)
        (nextToEdge node2-1)                                                                (nextToEdge node2-5)
        (nextToEdge node3-1)                                                                (nextToEdge node3-5)
        (nextToEdge node4-1)                                                                (nextToEdge node4-5)
        (nextToEdge node5-1) (nextToEdge node5-2) (nextToEdge node5-3) (nextToEdge node5-4) (nextToEdge node5-5)
        
        ; specify initial value of functions
        (= (total-cost) 0)

        ; select dummy dot
        (selected dummy)

        ; pipe relations
        (pipe node1-5) (pipe node2-5)
        (pipe node2-4)
        (pipe node2-2)
        (pipe node4-4) 
        (pipe node2-3)
        (pipe node5-2)
        (pipe node5-1) 

        ; adjacent relations
        (adjacent node1-1 node1-2) (adjacent node1-1 node2-1)
        (adjacent node1-2 node1-1) (adjacent node1-2 node2-2) (adjacent node1-2 node1-3)
        (adjacent node1-3 node1-2) (adjacent node1-3 node2-3) (adjacent node1-3 node1-4)
        (adjacent node1-4 node1-3) (adjacent node1-4 node2-4) (adjacent node1-4 node1-5)
        (adjacent node1-5 node1-4) (adjacent node1-5 node2-5)

        (adjacent node2-1 node1-1) (adjacent node2-1 node3-1) (adjacent node2-1 node2-2)
        (adjacent node2-2 node2-1) (adjacent node2-2 node2-3) (adjacent node2-2 node1-2) (adjacent node2-2 node3-2)
        (adjacent node2-3 node2-2) (adjacent node2-3 node2-4) (adjacent node2-3 node1-3) (adjacent node2-3 node3-3)
        (adjacent node2-4 node2-3) (adjacent node2-4 node2-5) (adjacent node2-4 node1-4) (adjacent node2-4 node3-4)
        (adjacent node2-5 node1-5) (adjacent node2-5 node3-5) (adjacent node2-5 node2-4)

        (adjacent node3-1 node2-1) (adjacent node3-1 node4-1) (adjacent node3-1 node3-2)
        (adjacent node3-2 node3-1) (adjacent node3-2 node3-3) (adjacent node3-2 node2-2) (adjacent node3-2 node4-2)
        (adjacent node3-3 node3-2) (adjacent node3-3 node3-4) (adjacent node3-3 node2-3) (adjacent node3-3 node4-3)
        (adjacent node3-4 node3-3) (adjacent node3-4 node3-5) (adjacent node3-4 node2-4) (adjacent node3-4 node4-4)
        (adjacent node3-5 node2-5) (adjacent node3-5 node4-5) (adjacent node3-5 node3-4)

        (adjacent node4-1 node3-1) (adjacent node4-1 node5-1) (adjacent node4-1 node4-2)
        (adjacent node4-2 node4-1) (adjacent node4-2 node4-3) (adjacent node4-2 node3-2) (adjacent node4-2 node5-2)
        (adjacent node4-3 node4-2) (adjacent node4-3 node4-4) (adjacent node4-3 node3-3) (adjacent node4-3 node5-3)
        (adjacent node4-4 node4-3) (adjacent node4-4 node4-5) (adjacent node4-4 node3-4) (adjacent node4-4 node5-4)
        (adjacent node4-5 node3-5) (adjacent node4-5 node5-5) (adjacent node4-5 node4-4)

        (adjacent node5-1 node5-2) (adjacent node5-1 node4-1)
        (adjacent node5-2 node5-1) (adjacent node5-2 node4-2) (adjacent node5-2 node5-3)
        (adjacent node5-3 node5-2) (adjacent node5-3 node4-3) (adjacent node5-3 node5-4)
        (adjacent node5-4 node5-3) (adjacent node5-4 node4-4) (adjacent node5-4 node5-5)
        (adjacent node5-5 node5-4) (adjacent node5-5 node4-5)

        ; position relations
        (position node1-1) (position node1-2) (position node1-3) (position node1-4) (position node1-5)
        (position node2-1) (position node2-2) (position node2-3) (position node2-4) (position node2-5)
        (position node3-1) (position node3-2) (position node3-3) (position node3-4) (position node3-5)
        (position node4-1) (position node4-2) (position node4-3) (position node4-4) (position node4-5)
        (position node5-1) (position node5-2) (position node5-3) (position node5-4) (position node5-5)

    )

    (:goal (and
        ;head relations
        (head node4-4 g) 
        (head node2-3 y)
        (head node5-2 b)
        (head node5-1 r)
        
        ; pipe relations
        (pipe node3-5) (pipe node4-5) (pipe node5-5)
        (pipe node1-4) (pipe node3-4) (pipe node5-4)
        (pipe node1-3) (pipe node3-3) (pipe node4-3) (pipe node5-3)
        (pipe node1-2) (pipe node3-2) (pipe node4-2)
        (pipe node1-1) (pipe node2-1) (pipe node3-1) (pipe node4-1)
        )
    )

    (:metric 
        minimize (total-cost)
    )

)
