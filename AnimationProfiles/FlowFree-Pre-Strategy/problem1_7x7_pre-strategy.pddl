(define (problem FlowFree-7x7) 
    (:domain FlowFree)
    (:objects 
        r y g b o c - dot
        node1-7 node2-7 node3-7 node4-7 node5-7 node6-7 node7-7 - node
        node1-6 node2-6 node3-6 node4-6 node5-6 node6-6 node7-6 - node
        node1-5 node2-5 node3-5 node4-5 node5-5 node6-5 node7-5 - node
        node1-4 node2-4 node3-4 node4-4 node5-4 node6-4 node7-4 - node
        node1-3 node2-3 node3-3 node4-3 node5-3 node6-3 node7-3 - node
        node1-2 node2-2 node3-2 node4-2 node5-2 node6-2 node7-2 - node
        node1-1 node2-1 node3-1 node4-1 node5-1 node6-1 node7-1 - node
    )

    (:init
        ; head relations
        (head node1-6 b) (head node2-6 y) (head node6-6 c) (head node7-6 g)
        (head node1-5 o) (head node7-5 r)

        ; filled relations
        ; the 'starting' positions
        (filled node1-6 b) (filled node2-6 y) (filled node6-6 c) (filled node7-6 g)
        (filled node1-5 o) (filled node7-5 r)
        ; the 'destinations'
        (filled node2-5 b) 
        (filled node3-4 y)
        (filled node6-3 c)
        (filled node4-2 o) (filled node6-2 g)
        (filled node1-1 r)

        ; select first colour at random
        (selected r)

        ; empty relations
        (empty node1-7) (empty node2-7) (empty node3-7) (empty node4-7) (empty node5-7) (empty node6-7) (empty node7-7) 
        (empty node3-6) (empty node4-6) (empty node5-6)
        (empty node3-5) (empty node4-5) (empty node5-5) (empty node6-5) 
        (empty node1-4) (empty node2-4) (empty node4-4) (empty node5-4) (empty node6-4) (empty node7-4)
        (empty node1-3) (empty node2-3) (empty node3-3) (empty node4-3) (empty node5-3) (empty node7-3)
        (empty node1-2) (empty node2-2) (empty node3-2) (empty node5-2) (empty node7-2)
        (empty node2-1) (empty node3-1) (empty node4-1) (empty node5-1) (empty node6-1) (empty node7-1)

        ;adjacent relations
        (adjacent node1-1 node1-2) (adjacent node1-1 node2-1)
        (adjacent node1-2 node1-1) (adjacent node1-2 node2-2) (adjacent node1-2 node1-3)
        (adjacent node1-3 node1-2) (adjacent node1-3 node2-3) (adjacent node1-3 node1-4)
        (adjacent node1-4 node1-3) (adjacent node1-4 node2-4) (adjacent node1-4 node1-5)
        (adjacent node1-5 node1-4) (adjacent node1-5 node2-5) (adjacent node1-5 node1-6)
        (adjacent node1-6 node1-5) (adjacent node1-6 node2-6) (adjacent node1-6 node1-7)
        (adjacent node1-7 node2-7) (adjacent node1-7 node1-6)

        (adjacent node2-1 node1-1) (adjacent node2-1 node3-1) (adjacent node2-1 node2-2)
        (adjacent node2-2 node2-1) (adjacent node2-2 node2-3) (adjacent node2-2 node1-2) (adjacent node2-2 node3-2)
        (adjacent node2-3 node2-2) (adjacent node2-3 node2-4) (adjacent node2-3 node1-3) (adjacent node2-3 node3-3)
        (adjacent node2-4 node2-3) (adjacent node2-4 node2-5) (adjacent node2-4 node1-4) (adjacent node2-4 node3-4)
        (adjacent node2-5 node1-5) (adjacent node2-5 node3-5) (adjacent node2-5 node2-4) (adjacent node2-5 node2-6)
        (adjacent node2-6 node1-6) (adjacent node2-6 node3-6) (adjacent node2-6 node2-5) (adjacent node2-6 node2-7)
        (adjacent node2-7 node1-7) (adjacent node2-7 node3-7) (adjacent node2-7 node2-6)

        (adjacent node3-1 node2-1) (adjacent node3-1 node4-1) (adjacent node3-1 node3-2)
        (adjacent node3-2 node3-1) (adjacent node3-2 node3-3) (adjacent node3-2 node2-2) (adjacent node3-2 node4-2)
        (adjacent node3-3 node3-2) (adjacent node3-3 node3-4) (adjacent node3-3 node2-3) (adjacent node3-3 node4-3)
        (adjacent node3-4 node3-3) (adjacent node3-4 node3-5) (adjacent node3-4 node2-4) (adjacent node3-4 node4-4)
        (adjacent node3-5 node2-5) (adjacent node3-5 node4-5) (adjacent node3-5 node3-4) (adjacent node3-5 node3-6)
        (adjacent node3-6 node2-6) (adjacent node3-6 node4-6) (adjacent node3-6 node3-5) (adjacent node3-6 node3-7)
        (adjacent node3-7 node2-7) (adjacent node3-7 node4-7) (adjacent node3-7 node3-6)

        (adjacent node4-1 node3-1) (adjacent node4-1 node5-1) (adjacent node4-1 node4-2)
        (adjacent node4-2 node4-1) (adjacent node4-2 node4-3) (adjacent node4-2 node3-2) (adjacent node4-2 node5-2)
        (adjacent node4-3 node4-2) (adjacent node4-3 node4-4) (adjacent node4-3 node3-3) (adjacent node4-3 node5-3)
        (adjacent node4-4 node4-3) (adjacent node4-4 node4-5) (adjacent node4-4 node3-4) (adjacent node4-4 node5-4)
        (adjacent node4-5 node3-5) (adjacent node4-5 node5-5) (adjacent node4-5 node4-4) (adjacent node4-5 node4-6)
        (adjacent node4-6 node3-6) (adjacent node4-6 node5-6) (adjacent node4-6 node4-5) (adjacent node4-6 node4-7)
        (adjacent node4-7 node3-7) (adjacent node4-7 node5-7) (adjacent node4-7 node4-6)

        (adjacent node5-1 node4-1) (adjacent node5-1 node6-1) (adjacent node5-1 node5-2)
        (adjacent node5-2 node5-1) (adjacent node5-2 node5-3) (adjacent node5-2 node4-2) (adjacent node5-2 node6-2)
        (adjacent node5-3 node5-2) (adjacent node5-3 node5-4) (adjacent node5-3 node4-3) (adjacent node5-3 node6-3)
        (adjacent node5-4 node5-3) (adjacent node5-4 node5-5) (adjacent node5-4 node4-4) (adjacent node5-4 node6-4)
        (adjacent node5-5 node4-5) (adjacent node5-5 node6-5) (adjacent node5-5 node5-4) (adjacent node5-5 node5-6)
        (adjacent node5-6 node4-6) (adjacent node5-6 node6-6) (adjacent node5-6 node5-5) (adjacent node5-6 node5-7)
        (adjacent node5-7 node4-7) (adjacent node5-7 node6-7) (adjacent node5-7 node5-6)

        (adjacent node6-1 node6-2) (adjacent node6-1 node5-1) (adjacent node6-1 node7-1)
        (adjacent node6-2 node6-1) (adjacent node6-2 node5-2) (adjacent node6-2 node6-3) (adjacent node6-2 node7-2)
        (adjacent node6-3 node6-2) (adjacent node6-3 node5-3) (adjacent node6-3 node6-4) (adjacent node6-3 node7-3)
        (adjacent node6-4 node6-3) (adjacent node6-4 node5-4) (adjacent node6-4 node6-5) (adjacent node6-4 node7-4)
        (adjacent node6-5 node6-4) (adjacent node6-5 node5-5) (adjacent node6-5 node6-6) (adjacent node6-5 node7-5)
        (adjacent node6-6 node6-5) (adjacent node6-6 node5-6) (adjacent node6-6 node6-7) (adjacent node6-6 node7-6)
        (adjacent node6-7 node5-7) (adjacent node6-7 node6-6) (adjacent node6-7 node7-7) 

        (adjacent node7-1 node7-2) (adjacent node7-1 node6-1)
        (adjacent node7-2 node7-1) (adjacent node7-2 node6-2) (adjacent node7-2 node7-3)
        (adjacent node7-3 node7-2) (adjacent node7-3 node6-3) (adjacent node7-3 node7-4)
        (adjacent node7-4 node7-3) (adjacent node7-4 node6-4) (adjacent node7-4 node7-5)
        (adjacent node7-5 node7-4) (adjacent node7-5 node6-5) (adjacent node7-5 node7-6)
        (adjacent node7-6 node7-5) (adjacent node7-6 node6-6) (adjacent node7-6 node7-7)
        (adjacent node7-7 node6-7) (adjacent node7-7 node7-6)
        

        ; position relations
        (position node1-1) (position node1-2) (position node1-3) (position node1-4) (position node1-5) (position node1-6) (position node1-7) 
        (position node2-1) (position node2-2) (position node2-3) (position node2-4) (position node2-5) (position node2-6) (position node2-7)
        (position node3-1) (position node3-2) (position node3-3) (position node3-4) (position node3-5) (position node3-6) (position node3-7)
        (position node4-1) (position node4-2) (position node4-3) (position node4-4) (position node4-5) (position node4-6) (position node4-7)
        (position node5-1) (position node5-2) (position node5-3) (position node5-4) (position node5-5) (position node5-6) (position node5-7)
        (position node6-1) (position node6-2) (position node6-3) (position node6-4) (position node6-5) (position node6-6) (position node6-7)
        (position node7-1) (position node7-2) (position node7-3) (position node7-4) (position node7-5) (position node7-6) (position node7-7) 

    )

    (:goal  (and
                ; head relations
                (head node2-5 b) 
                (head node3-4 y)
                (head node6-3 c)
                (head node4-2 o) (head node6-2 g)
                (head node1-1 r)

                ; not-empty relations
                (not (empty node1-1)) (not (empty node1-2)) (not (empty node1-3)) (not (empty node1-4)) (not (empty node1-5)) (not (empty node1-6)) (not (empty node1-7))
                (not (empty node2-1)) (not (empty node2-2)) (not (empty node2-3)) (not (empty node2-4)) (not (empty node2-5)) (not (empty node2-6)) (not (empty node2-7))
                (not (empty node3-1)) (not (empty node3-2)) (not (empty node3-3)) (not (empty node3-4)) (not (empty node3-5)) (not (empty node3-6)) (not (empty node3-7))
                (not (empty node4-1)) (not (empty node4-2)) (not (empty node4-3)) (not (empty node4-4)) (not (empty node4-5)) (not (empty node4-6)) (not (empty node4-7))
                (not (empty node5-1)) (not (empty node5-2)) (not (empty node5-3)) (not (empty node5-4)) (not (empty node5-5)) (not (empty node5-6)) (not (empty node5-7))
                (not (empty node6-1)) (not (empty node6-2)) (not (empty node6-3)) (not (empty node6-4)) (not (empty node6-5)) (not (empty node6-6)) (not (empty node6-7))
                (not (empty node7-1)) (not (empty node7-2)) (not (empty node7-3)) (not (empty node7-4)) (not (empty node7-5)) (not (empty node7-6)) (not (empty node7-7))
            )
    )

)
