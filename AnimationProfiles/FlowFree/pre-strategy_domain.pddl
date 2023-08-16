; Title: Pre-strategy FlowFree Domain
; Author: Aditi Basu (University of Melbourne)

(define (domain FlowFree)
    (:requirements :strips :typing)

    (:types
        dot node
    )

    (:predicates
        (empty ?n - node)
        (head ?n - node ?d - dot)
        (selected ?d - dot)
        (finished ?d - dot)
        (adjacent ?n - node ?n - node)
        (filled ?n - node ?d - dot)

        ; Planimation predicates
        (position ?n - node)    

    )

    ; move selection from d1 to d2 
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
                        )
    )
    
    ; move from n1 to n2
    (:action move
        :parameters     (?n1 - node 
                         ?n2 - node 
                         ?d - dot)

        :precondition   (and (or (empty ?n2) (filled ?n2 ?d))
                             (selected ?d)
                             (head ?n1 ?d)
                             (adjacent ?n1 ?n2)
                        )
        :effect         (and (head ?n2 ?d)
                             (not (empty ?n2)))
    )


)
