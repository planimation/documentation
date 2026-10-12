(define (problem FlowFree-6x6)
    (:domain FlowFree)
    (:objects 
        r y g b o - dot
        node1-6 node2-6 node3-6 node4-6 node5-6 node6-6 - node
        node1-5 node2-5 node3-5 node4-5 node5-5 node6-5 - node
        node1-4 node2-4 node3-4 node4-4 node5-4 node6-4 - node
        node1-3 node2-3 node3-3 node4-3 node5-3 node6-3 - node
        node1-2 node2-2 node3-2 node4-2 node5-2 node6-2 - node
        node1-1 node2-1 node3-1 node4-1 node5-1 node6-1 - node
    )

    (:init
        ; head relations
        (head node6-6 o)
        (head node2-4 y) (head node3-4 r)
        (head node2-2 g) 
        (head node4-1 b)

        ; filled relations
        ; the 'starting' positions
        (filled node6-6 o)
        (filled node2-4 y) (filled node3-4 r)
        (filled node2-2 g) 
        (filled node4-1 b)
        ; the 'destinations'
        (filled node4-3 g) (filled node6-3 y)
        (filled node4-2 o) (filled node5-2 r) (filled node6-2 b)

        ; select first colour arbitrarily
        (selected r)

        ; empty relations
        (empty node1-6) (empty node2-6) (empty node3-6) (empty node4-6) (empty node5-6)
        (empty node1-5) (empty node2-5) (empty node3-5) (empty node4-5) (empty node5-5) (empty node6-5)
        (empty node1-4) (empty node4-4) (empty node5-4) (empty node6-4)
        (empty node1-3) (empty node2-3) (empty node3-3) (empty node5-3)
        (empty node1-2) (empty node3-2)
        (empty node1-1) (empty node2-1) (empty node3-1) (empty node5-1) (empty node6-1)

        ; adjacent relations
        (adjacent node1-1 node1-2) (adjacent node1-1 node2-1)
        (adjacent node1-2 node1-1) (adjacent node1-2 node2-2) (adjacent node1-2 node1-3)
        (adjacent node1-3 node1-2) (adjacent node1-3 node2-3) (adjacent node1-3 node1-4)
        (adjacent node1-4 node1-3) (adjacent node1-4 node2-4) (adjacent node1-4 node1-5)
        (adjacent node1-5 node1-4) (adjacent node1-5 node2-5) (adjacent node1-5 node1-6)
        (adjacent node1-6 node1-5) (adjacent node1-6 node2-6)

        (adjacent node2-1 node1-1) (adjacent node2-1 node3-1) (adjacent node2-1 node2-2)
        (adjacent node2-2 node2-1) (adjacent node2-2 node2-3) (adjacent node2-2 node1-2) (adjacent node2-2 node3-2)
        (adjacent node2-3 node2-2) (adjacent node2-3 node2-4) (adjacent node2-3 node1-3) (adjacent node2-3 node3-3)
        (adjacent node2-4 node2-3) (adjacent node2-4 node2-5) (adjacent node2-4 node1-4) (adjacent node2-4 node3-4)
        (adjacent node2-5 node1-5) (adjacent node2-5 node3-5) (adjacent node2-5 node2-4) (adjacent node2-5 node2-6)
        (adjacent node2-6 node1-6) (adjacent node2-6 node3-6) (adjacent node2-6 node2-5)

        (adjacent node3-1 node2-1) (adjacent node3-1 node4-1) (adjacent node3-1 node3-2)
        (adjacent node3-2 node3-1) (adjacent node3-2 node3-3) (adjacent node3-2 node2-2) (adjacent node3-2 node4-2)
        (adjacent node3-3 node3-2) (adjacent node3-3 node3-4) (adjacent node3-3 node2-3) (adjacent node3-3 node4-3)
        (adjacent node3-4 node3-3) (adjacent node3-4 node3-5) (adjacent node3-4 node2-4) (adjacent node3-4 node4-4)
        (adjacent node3-5 node2-5) (adjacent node3-5 node4-5) (adjacent node3-5 node3-4) (adjacent node3-5 node3-6)
        (adjacent node3-6 node2-6) (adjacent node3-6 node4-6) (adjacent node3-6 node3-5)

        (adjacent node4-1 node3-1) (adjacent node4-1 node5-1) (adjacent node4-1 node4-2)
        (adjacent node4-2 node4-1) (adjacent node4-2 node4-3) (adjacent node4-2 node3-2) (adjacent node4-2 node5-2)
        (adjacent node4-3 node4-2) (adjacent node4-3 node4-4) (adjacent node4-3 node3-3) (adjacent node4-3 node5-3)
        (adjacent node4-4 node4-3) (adjacent node4-4 node4-5) (adjacent node4-4 node3-4) (adjacent node4-4 node5-4)
        (adjacent node4-5 node3-5) (adjacent node4-5 node5-5) (adjacent node4-5 node4-4) (adjacent node4-5 node4-6)
        (adjacent node4-6 node3-6) (adjacent node4-6 node5-6) (adjacent node4-6 node4-5)

        (adjacent node5-1 node4-1) (adjacent node5-1 node6-1) (adjacent node5-1 node5-2)
        (adjacent node5-2 node5-1) (adjacent node5-2 node5-3) (adjacent node5-2 node4-2) (adjacent node5-2 node6-2)
        (adjacent node5-3 node5-2) (adjacent node5-3 node5-4) (adjacent node5-3 node4-3) (adjacent node5-3 node6-3)
        (adjacent node5-4 node5-3) (adjacent node5-4 node5-5) (adjacent node5-4 node4-4) (adjacent node5-4 node6-4)
        (adjacent node5-5 node4-5) (adjacent node5-5 node6-5) (adjacent node5-5 node5-4) (adjacent node5-5 node5-6)
        (adjacent node5-6 node4-6) (adjacent node5-6 node6-6) (adjacent node5-6 node5-5)

        (adjacent node6-1 node6-2) (adjacent node6-1 node5-1) 
        (adjacent node6-2 node6-1) (adjacent node6-2 node5-2) (adjacent node6-2 node6-3)
        (adjacent node6-3 node6-2) (adjacent node6-3 node5-3) (adjacent node6-3 node6-4)
        (adjacent node6-4 node6-3) (adjacent node6-4 node5-4) (adjacent node6-4 node6-5)
        (adjacent node6-5 node6-4) (adjacent node6-5 node5-5) (adjacent node6-5 node6-6)
        (adjacent node6-6 node6-5) (adjacent node6-6 node5-6)

        ; position relations
        (position node1-1) (position node1-2) (position node1-3) (position node1-4) (position node1-5) (position node1-6)
        (position node2-1) (position node2-2) (position node2-3) (position node2-4) (position node2-5) (position node2-6)
        (position node3-1) (position node3-2) (position node3-3) (position node3-4) (position node3-5) (position node3-6)
        (position node4-1) (position node4-2) (position node4-3) (position node4-4) (position node4-5) (position node4-6)
        (position node5-1) (position node5-2) (position node5-3) (position node5-4) (position node5-5) (position node5-6)
        (position node6-1) (position node6-2) (position node6-3) (position node6-4) (position node6-5) (position node6-6)

    )

    (:goal (and
        ; head relations
        (head node4-3 g) (head node6-3 y)
        (head node4-2 o) (head node5-2 r) (head node6-2 b)

        ; not-empty relations
        (not (empty node1-1)) (not (empty node1-2)) (not (empty node1-3)) (not (empty node1-4)) (not (empty node1-5)) (not (empty node1-6))
        (not (empty node2-1)) (not (empty node2-2)) (not (empty node2-3)) (not (empty node2-4)) (not (empty node2-5)) (not (empty node2-6))
        (not (empty node3-1)) (not (empty node3-2)) (not (empty node3-3)) (not (empty node3-4)) (not (empty node3-5)) (not (empty node3-6))
        (not (empty node4-1)) (not (empty node4-2)) (not (empty node4-3)) (not (empty node4-4)) (not (empty node4-5)) (not (empty node4-6))
        (not (empty node5-1)) (not (empty node5-2)) (not (empty node5-3)) (not (empty node5-4)) (not (empty node5-5)) (not (empty node5-6))
        (not (empty node6-1)) (not (empty node6-2)) (not (empty node6-3)) (not (empty node6-4)) (not (empty node6-5)) (not (empty node6-6))
        )
    )

)
