(define (problem prob_family_and_fisherman)
    (:domain family_and_fisherman)
    
    (:objects
        father mother fisherman - adult
        son daughter - child
        bank1 bank2 - bank
        boat - boat
    )
    
        
    (:init
        
        (same_target father father)
        (same_target mother mother)
        (same_target son son)
        (same_target daughter daughter)
        (same_target fisherman fisherman)
        (same_target bank1 bank1)
        (same_target bank2 bank2)
        
        (on_bank father bank1)
        (on_bank mother bank1)
        (on_bank son bank1)
        (on_bank daughter bank1)
        (on_bank fisherman bank1)
        
        (at_bank boat bank1)
        
        (boat_empty boat)
    )
    
    (:goal
        (and
            (on_bank father bank2)
            (on_bank mother bank2)
            (on_bank son bank2)
            (on_bank daughter bank2)
            (on_bank fisherman bank1)
            (at_bank boat bank1)
        )
    )
)