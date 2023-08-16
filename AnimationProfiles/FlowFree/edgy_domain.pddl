; Title: FlowFree Domain for Edgy Strategy (made compatible with Fast Downward planners)
; Author: Aditi Basu (University of Melbourne)

(define (domain FlowFree)
    (:requirements :strips :typing :action-costs :conditional-effects)

    (:types
        dot node
    )

    (:predicates
        ; pre-strategy domain predicates
        (head ?n - node ?d - dot)
        (selected ?d - dot)
        (finished ?d - dot)
        (adjacent ?n - node ?n - node)
        (filled ?n - node ?d - dot)

        ; Planimation predicates
        (position ?n - node)
        
        ; Edgy strategy predicates
        (nextToEdge ?n - node)               ; is a node next to an edge?
        (currentPath ?n - node)        ; is a node part of the current path being formed?

        ; Fast-Downward predicates
        (pipe ?n - node)                  ; does a node contain a pipe?

    )

    ; cost function
    (:functions
        (total-cost) - number
    )

    ; move selection from d1 to d2 based on cost
    (:action select-colour
        :parameters     (?d1 - dot
                         ?d2 - dot)

        :precondition   (and 
                            (selected ?d1)
                            (not (selected ?d2))
                            (not (finished ?d2))
                        )

        :effect         (and 
                            (selected ?d2)
                            (not (selected ?d1))
                            (finished ?d1)              
				            
                            (increase (total-cost) 1)
                        )
    )
    
    ; move from n1 to n2 where n2 is NOT nextToEdge
    (:action move
        :parameters     (?n1 - node 
                         ?n2 - node 
                         ?d - dot)

        :precondition   (and 
                            (not (pipe ?n2))
                            (not (filled ?n2 ?d))
                            (selected ?d)
                            (head ?n1 ?d)
                            (not (head ?n2 ?d))
                            (adjacent ?n1 ?n2)
                            (not (nextToEdge ?n2))
                        )
                        
        :effect         (and 
                            (head ?n2 ?d)
                            (pipe ?n2)
                            (currentPath ?n2)
                             
                            ; increment cost as ?n2 is not nextToEdge
                            (increase (total-cost) 1)
                        )
    )
    
     ; move from n1 to n2 where n2 is nextToEdge
    (:action moveNextToEdge
        :parameters     (?n1 - node 
                         ?n2 - node 
                         ?d - dot)

        :precondition   (and 
                            (not (pipe ?n2))
                            (not (filled ?n2 ?d))
                            (selected ?d)
                            (head ?n1 ?d)
                            (not (head ?n2 ?d))
                            (adjacent ?n1 ?n2)
                            (nextToEdge ?n2)
                        )
        :effect         (and 
                            (head ?n2 ?d)
                            (pipe ?n2)
                            (currentPath ?n2)
                            
                            ; no cost increase as ?n2 is nextToEdge
                            (increase (total-cost) 0)
                        )
    )

    ; finish a path by connecting to second dot 
    (:action finishPath
        :parameters     (?n1 - node
                         ?n2 - node
                         ?d - dot)

        :precondition   (and
                            (filled ?n2 ?d) 
                            (selected ?d)
                            (head ?n1 ?d)
                            (not (head ?n2 ?d))
                            (adjacent ?n1 ?n2)
                        ) 

        :effect         (and 
                            (head ?n2 ?d)
                            
                            ; convert nodes adjacent to currentPath nodes to nextToEdge
                            (forall (?cp - node ?n - node) 
                                (when 
                                    (and (currentPath ?cp) (adjacent ?cp ?n))
                                    (nextToEdge ?n)    
                                )
                            )

                            ; reset all currentPath predicates to false 
                            (forall (?x - node)
                                (when 
                                    (currentPath ?x) 
                                    (not (currentPath ?x))
                                )
                            )

                            ; no cost increase as all dots will need to execute this action regardless of initial state
                            (increase (total-cost) 0)
                        )
    )
)
