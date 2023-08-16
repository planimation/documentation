; Generated from a PDDL template and a data file

(define (problem FlowFree_p1_8x8)
    (:domain FlowFree)

    (:objects 
        r g y b o c p pr m - dot
        node1-1 node1-2 node1-3 node1-4 node1-5 node1-6 node1-7 node1-8 - node 
        node2-1 node2-2 node2-3 node2-4 node2-5 node2-6 node2-7 node2-8 - node 
        node3-1 node3-2 node3-3 node3-4 node3-5 node3-6 node3-7 node3-8 - node 
        node4-1 node4-2 node4-3 node4-4 node4-5 node4-6 node4-7 node4-8 - node 
        node5-1 node5-2 node5-3 node5-4 node5-5 node5-6 node5-7 node5-8 - node 
        node6-1 node6-2 node6-3 node6-4 node6-5 node6-6 node6-7 node6-8 - node 
        node7-1 node7-2 node7-3 node7-4 node7-5 node7-6 node7-7 node7-8 - node 
        node8-1 node8-2 node8-3 node8-4 node8-5 node8-6 node8-7 node8-8 - node 
        
    )

    (:init 
        ; head relations
        (head node3-7 r) (head node8-2 y) (head node4-2 g) (head node2-2 b) (head node7-2 o) (head node4-8 c) (head node5-7 p) (head node5-4 pr) (head node8-1 m) 

        ; filled relations
        ; the 'starting' positions
        (filled node3-7 r) (filled node8-2 y) (filled node4-2 g) (filled node2-2 b) (filled node7-2 o) (filled node4-8 c) (filled node5-7 p) (filled node5-4 pr) (filled node8-1 m) 

        ; the destinations
        (filled node3-5 g) (filled node5-8 y) (filled node3-6 b) (filled node4-3 r) (filled node7-2 o) (filled node1-8 c) (filled node7-7 p) (filled node4-7 pr) (filled node6-5 m) 

        ; select first colour
        (selected r)

        ; empty relations - CHANGE PER PROBLEM
        (empty node1-1)
        (empty node1-2)
        (empty node1-3)
        (empty node1-4)
        (empty node1-5)
        (empty node1-6)
        (empty node1-7)
        
        (empty node2-1)
        (empty node2-3)
        (empty node2-4)
        (empty node2-5)
        (empty node2-6)
        (empty node2-7)
        (empty node2-8)
        
        (empty node3-1)
        (empty node3-2)
        (empty node3-3)
        (empty node3-4)
        (empty node3-8)
        
        (empty node4-1)
        (empty node4-4)
        (empty node4-5)
        (empty node4-6)
        
        (empty node5-1)
        (empty node5-2)
        (empty node5-3)
        (empty node5-5)
        (empty node5-6)
        
        (empty node6-1)
        (empty node6-2)
        (empty node6-3)
        (empty node6-4)
        (empty node6-6)
        (empty node6-7)
        (empty node6-8)
        
        (empty node7-1)
        (empty node7-3)
        (empty node7-4)
        (empty node7-5)
        (empty node7-6)
        (empty node7-8)
        
        (empty node8-3)
        (empty node8-4)
        (empty node8-5)
        (empty node8-6)
        (empty node8-7)
        (empty node8-8)
        

        ; adjacent relations - CHANGE PER GRID SIZE
        (adjacent node1-1 node1-2) (adjacent node1-1 node2-1) 
        (adjacent node1-2 node1-3) (adjacent node1-2 node1-1) (adjacent node1-2 node2-2) 
        (adjacent node1-3 node1-4) (adjacent node1-3 node1-2) (adjacent node1-3 node2-3) 
        (adjacent node1-4 node1-5) (adjacent node1-4 node1-3) (adjacent node1-4 node2-4) 
        (adjacent node1-5 node1-6) (adjacent node1-5 node1-4) (adjacent node1-5 node2-5) 
        (adjacent node1-6 node1-7) (adjacent node1-6 node1-5) (adjacent node1-6 node2-6) 
        (adjacent node1-7 node1-8) (adjacent node1-7 node1-6) (adjacent node1-7 node2-7) 
        (adjacent node1-8 node1-7) (adjacent node1-8 node2-8) 
        
        (adjacent node2-1 node2-2) (adjacent node2-1 node1-1) (adjacent node2-1 node3-1) 
        (adjacent node2-2 node2-3) (adjacent node2-2 node2-1) (adjacent node2-2 node1-2) (adjacent node2-2 node3-2) 
        (adjacent node2-3 node2-4) (adjacent node2-3 node2-2) (adjacent node2-3 node1-3) (adjacent node2-3 node3-3) 
        (adjacent node2-4 node2-5) (adjacent node2-4 node2-3) (adjacent node2-4 node1-4) (adjacent node2-4 node3-4) 
        (adjacent node2-5 node2-6) (adjacent node2-5 node2-4) (adjacent node2-5 node1-5) (adjacent node2-5 node3-5) 
        (adjacent node2-6 node2-7) (adjacent node2-6 node2-5) (adjacent node2-6 node1-6) (adjacent node2-6 node3-6) 
        (adjacent node2-7 node2-8) (adjacent node2-7 node2-6) (adjacent node2-7 node1-7) (adjacent node2-7 node3-7) 
        (adjacent node2-8 node2-7) (adjacent node2-8 node1-8) (adjacent node2-8 node3-8) 
        
        (adjacent node3-1 node3-2) (adjacent node3-1 node2-1) (adjacent node3-1 node4-1) 
        (adjacent node3-2 node3-3) (adjacent node3-2 node3-1) (adjacent node3-2 node2-2) (adjacent node3-2 node4-2) 
        (adjacent node3-3 node3-4) (adjacent node3-3 node3-2) (adjacent node3-3 node2-3) (adjacent node3-3 node4-3) 
        (adjacent node3-4 node3-5) (adjacent node3-4 node3-3) (adjacent node3-4 node2-4) (adjacent node3-4 node4-4) 
        (adjacent node3-5 node3-6) (adjacent node3-5 node3-4) (adjacent node3-5 node2-5) (adjacent node3-5 node4-5) 
        (adjacent node3-6 node3-7) (adjacent node3-6 node3-5) (adjacent node3-6 node2-6) (adjacent node3-6 node4-6) 
        (adjacent node3-7 node3-8) (adjacent node3-7 node3-6) (adjacent node3-7 node2-7) (adjacent node3-7 node4-7) 
        (adjacent node3-8 node3-7) (adjacent node3-8 node2-8) (adjacent node3-8 node4-8) 
        
        (adjacent node4-1 node4-2) (adjacent node4-1 node3-1) (adjacent node4-1 node5-1) 
        (adjacent node4-2 node4-3) (adjacent node4-2 node4-1) (adjacent node4-2 node3-2) (adjacent node4-2 node5-2) 
        (adjacent node4-3 node4-4) (adjacent node4-3 node4-2) (adjacent node4-3 node3-3) (adjacent node4-3 node5-3) 
        (adjacent node4-4 node4-5) (adjacent node4-4 node4-3) (adjacent node4-4 node3-4) (adjacent node4-4 node5-4) 
        (adjacent node4-5 node4-6) (adjacent node4-5 node4-4) (adjacent node4-5 node3-5) (adjacent node4-5 node5-5) 
        (adjacent node4-6 node4-7) (adjacent node4-6 node4-5) (adjacent node4-6 node3-6) (adjacent node4-6 node5-6) 
        (adjacent node4-7 node4-8) (adjacent node4-7 node4-6) (adjacent node4-7 node3-7) (adjacent node4-7 node5-7) 
        (adjacent node4-8 node4-7) (adjacent node4-8 node3-8) (adjacent node4-8 node5-8) 
        
        (adjacent node5-1 node5-2) (adjacent node5-1 node4-1) (adjacent node5-1 node6-1) 
        (adjacent node5-2 node5-3) (adjacent node5-2 node5-1) (adjacent node5-2 node4-2) (adjacent node5-2 node6-2) 
        (adjacent node5-3 node5-4) (adjacent node5-3 node5-2) (adjacent node5-3 node4-3) (adjacent node5-3 node6-3) 
        (adjacent node5-4 node5-5) (adjacent node5-4 node5-3) (adjacent node5-4 node4-4) (adjacent node5-4 node6-4) 
        (adjacent node5-5 node5-6) (adjacent node5-5 node5-4) (adjacent node5-5 node4-5) (adjacent node5-5 node6-5) 
        (adjacent node5-6 node5-7) (adjacent node5-6 node5-5) (adjacent node5-6 node4-6) (adjacent node5-6 node6-6) 
        (adjacent node5-7 node5-8) (adjacent node5-7 node5-6) (adjacent node5-7 node4-7) (adjacent node5-7 node6-7) 
        (adjacent node5-8 node5-7) (adjacent node5-8 node4-8) (adjacent node5-8 node6-8) 
        
        (adjacent node6-1 node6-2) (adjacent node6-1 node5-1) (adjacent node6-1 node7-1) 
        (adjacent node6-2 node6-3) (adjacent node6-2 node6-1) (adjacent node6-2 node5-2) (adjacent node6-2 node7-2) 
        (adjacent node6-3 node6-4) (adjacent node6-3 node6-2) (adjacent node6-3 node5-3) (adjacent node6-3 node7-3) 
        (adjacent node6-4 node6-5) (adjacent node6-4 node6-3) (adjacent node6-4 node5-4) (adjacent node6-4 node7-4) 
        (adjacent node6-5 node6-6) (adjacent node6-5 node6-4) (adjacent node6-5 node5-5) (adjacent node6-5 node7-5) 
        (adjacent node6-6 node6-7) (adjacent node6-6 node6-5) (adjacent node6-6 node5-6) (adjacent node6-6 node7-6) 
        (adjacent node6-7 node6-8) (adjacent node6-7 node6-6) (adjacent node6-7 node5-7) (adjacent node6-7 node7-7) 
        (adjacent node6-8 node6-7) (adjacent node6-8 node5-8) (adjacent node6-8 node7-8) 
        
        (adjacent node7-1 node7-2) (adjacent node7-1 node6-1) (adjacent node7-1 node8-1) 
        (adjacent node7-2 node7-3) (adjacent node7-2 node7-1) (adjacent node7-2 node6-2) (adjacent node7-2 node8-2) 
        (adjacent node7-3 node7-4) (adjacent node7-3 node7-2) (adjacent node7-3 node6-3) (adjacent node7-3 node8-3) 
        (adjacent node7-4 node7-5) (adjacent node7-4 node7-3) (adjacent node7-4 node6-4) (adjacent node7-4 node8-4) 
        (adjacent node7-5 node7-6) (adjacent node7-5 node7-4) (adjacent node7-5 node6-5) (adjacent node7-5 node8-5) 
        (adjacent node7-6 node7-7) (adjacent node7-6 node7-5) (adjacent node7-6 node6-6) (adjacent node7-6 node8-6) 
        (adjacent node7-7 node7-8) (adjacent node7-7 node7-6) (adjacent node7-7 node6-7) (adjacent node7-7 node8-7) 
        (adjacent node7-8 node7-7) (adjacent node7-8 node6-8) (adjacent node7-8 node8-8) 
        
        (adjacent node8-1 node8-2) (adjacent node8-1 node7-1) 
        (adjacent node8-2 node8-3) (adjacent node8-2 node8-1) (adjacent node8-2 node7-2) 
        (adjacent node8-3 node8-4) (adjacent node8-3 node8-2) (adjacent node8-3 node7-3) 
        (adjacent node8-4 node8-5) (adjacent node8-4 node8-3) (adjacent node8-4 node7-4) 
        (adjacent node8-5 node8-6) (adjacent node8-5 node8-4) (adjacent node8-5 node7-5) 
        (adjacent node8-6 node8-7) (adjacent node8-6 node8-5) (adjacent node8-6 node7-6) 
        (adjacent node8-7 node8-8) (adjacent node8-7 node8-6) (adjacent node8-7 node7-7) 
        (adjacent node8-8 node8-7) (adjacent node8-8 node7-8) 
        
        ; positions relations - CHANGE PER GRID SIZE
        (position node1-1) (position node1-2) (position node1-3) (position node1-4) (position node1-5) (position node1-6) (position node1-7) (position node1-8) 
        (position node2-1) (position node2-2) (position node2-3) (position node2-4) (position node2-5) (position node2-6) (position node2-7) (position node2-8) 
        (position node3-1) (position node3-2) (position node3-3) (position node3-4) (position node3-5) (position node3-6) (position node3-7) (position node3-8) 
        (position node4-1) (position node4-2) (position node4-3) (position node4-4) (position node4-5) (position node4-6) (position node4-7) (position node4-8) 
        (position node5-1) (position node5-2) (position node5-3) (position node5-4) (position node5-5) (position node5-6) (position node5-7) (position node5-8) 
        (position node6-1) (position node6-2) (position node6-3) (position node6-4) (position node6-5) (position node6-6) (position node6-7) (position node6-8) 
        (position node7-1) (position node7-2) (position node7-3) (position node7-4) (position node7-5) (position node7-6) (position node7-7) (position node7-8) 
        (position node8-1) (position node8-2) (position node8-3) (position node8-4) (position node8-5) (position node8-6) (position node8-7) (position node8-8) 
        
    )

    (:goal (and
        ; head relations - CHANGE PER PROBLEM
        (head node3-5 g) (head node5-8 y) (head node3-6 b) (head node4-3 r) (head node7-2 o) (head node1-8 c) (head node7-7 p) (head node4-7 pr) (head node6-5 m) 

        ; not-empty relations - CHANGE PER GRID SIZE
        (not (empty node1-1)) (not (empty node1-2)) (not (empty node1-3)) (not (empty node1-4)) (not (empty node1-5)) (not (empty node1-6)) (not (empty node1-7)) (not (empty node1-8)) 
        (not (empty node2-1)) (not (empty node2-2)) (not (empty node2-3)) (not (empty node2-4)) (not (empty node2-5)) (not (empty node2-6)) (not (empty node2-7)) (not (empty node2-8)) 
        (not (empty node3-1)) (not (empty node3-2)) (not (empty node3-3)) (not (empty node3-4)) (not (empty node3-5)) (not (empty node3-6)) (not (empty node3-7)) (not (empty node3-8)) 
        (not (empty node4-1)) (not (empty node4-2)) (not (empty node4-3)) (not (empty node4-4)) (not (empty node4-5)) (not (empty node4-6)) (not (empty node4-7)) (not (empty node4-8)) 
        (not (empty node5-1)) (not (empty node5-2)) (not (empty node5-3)) (not (empty node5-4)) (not (empty node5-5)) (not (empty node5-6)) (not (empty node5-7)) (not (empty node5-8)) 
        (not (empty node6-1)) (not (empty node6-2)) (not (empty node6-3)) (not (empty node6-4)) (not (empty node6-5)) (not (empty node6-6)) (not (empty node6-7)) (not (empty node6-8)) 
        (not (empty node7-1)) (not (empty node7-2)) (not (empty node7-3)) (not (empty node7-4)) (not (empty node7-5)) (not (empty node7-6)) (not (empty node7-7)) (not (empty node7-8)) 
        (not (empty node8-1)) (not (empty node8-2)) (not (empty node8-3)) (not (empty node8-4)) (not (empty node8-5)) (not (empty node8-6)) (not (empty node8-7)) (not (empty node8-8)) 
        
    ))


)
; This PDDL problem file was generated using Jinja2 template
;    Python: 3.8.5 (default, Sep  4 2020, 02:22:02) 
; [Clang 10.0.0 ]
;    Data: p1_8x8_v2.json
;    Time: 2022-10-04 22:08:07.935102
