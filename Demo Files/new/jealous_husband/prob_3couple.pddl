(define (problem prob_3couple)
    (:domain jealous_husband)
    
    (:objects
        bank1 - bank1 bank2 - bank2
        husband1 - husband1 husband2 - husband2 husband3 - husband3
        wife1 - wife1 wife2 - wife2 wife3 - wife3
        boat - boat
    )
    
        
    (:init
        
        (same_target husband1 husband1)
        (same_target husband2 husband2)
        (same_target husband3 husband3)
        (same_target wife1 wife1)
        (same_target wife2 wife2)
        (same_target wife3 wife3)
        (same_target bank1 bank1)
        (same_target bank2 bank2)
        
        (on_bank husband1 bank1)
        (on_bank husband2 bank1)
        (on_bank husband3 bank1)
        (on_bank wife1 bank1)
        (on_bank wife2 bank1)
        (on_bank wife3 bank1)
        
        (at_bank boat bank1)
        
        (boat_empty boat)
    )
    
    (:goal
        (and
            (on_bank husband1 bank2)
            (on_bank husband2 bank2)
            (on_bank husband3 bank2)
            (on_bank wife1 bank2)
            (on_bank wife2 bank2)
            (on_bank wife3 bank2)
        )
    )
)