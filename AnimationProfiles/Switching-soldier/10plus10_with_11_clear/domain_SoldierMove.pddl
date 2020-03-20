(define (domain soldier_move)
    (:requirements :strips)
    
    (:predicates 
        (leftPerson ?p)
        (rightPerson ?p)
        (ground ?x)
        (onGround ?p ?g)
        (nextGround ?from ?to) ;if the latter is the next ground to the former
        (groundClear ?g)
    )
    
    (:action leftPersonMove
        :parameters (?person ?from ?to)
        :precondition   (and
                            (leftPerson ?person)
                            (ground ?from)
                            (ground ?to)
                            (onGround ?person ?from)
                            (nextGround ?from ?to)
                            (groundClear ?to)
                        )
        :effect (and
                    (onGround ?person ?to)
                    (not (onGround ?person ?from))
                    (groundClear ?from)
                    (not (groundClear ?to))
                )
    )
    
   
    (:action leftPersonJump
        :parameters (?person ?from ?middle ?middlePerson ?to)
        :precondition   (and
                            (leftPerson ?person)
                            (ground ?from)
                            (ground ?to)
                            (ground ?middle)
                            (onGround ?person ?from)
                            (onGround ?middlePerson ?middle)
                            (nextGround ?from ?middle)
                            (nextGround ?middle ?to)
                            (rightPerson ?middlePerson)
                            (groundClear ?to)
                        )
        :effect (and
                    (groundClear ?from)
                    (not (groundClear ?to))
                    (onGround ?person ?to)
                    (not (onGround ?person ?from))
                )
    )
    
    (:action rightPersonMove
        :parameters (?person ?from ?to)
        :precondition   (and
                            (rightPerson ?person)
                            (ground ?from)
                            (ground ?to)
                            (onGround ?person ?from)
                            (nextGround ?to ?from)
                            (groundClear ?to)
                        )
        :effect (and
                    (onGround ?person ?to)
                    (not (onGround ?person ?from))
                    (groundClear ?from)
                    (not (groundClear ?to))
                )
    )
    
    (:action rightPersonJump
        :parameters (?person ?from ?middle ?middlePerson ?to)
        :precondition   (and
                            (rightPerson ?person)
                            (ground ?from)
                            (ground ?to)
                            (ground ?middle)
                            (onGround ?person ?from)
                            (onGround ?middlePerson ?middle)
                            (leftPerson ?middlePerson)
                            (nextGround ?middle ?from)
                            (nextGround ?to ?middle)
                            (groundClear ?to)
                        )
        :effect (and
                    (groundClear ?from)
                    (not (groundClear ?to))
                    (onGround ?person ?to)
                    (not (onGround ?person ?from))
                )
    )
    
)