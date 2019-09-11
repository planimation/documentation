(define (problem prob_3m_3c)
    (:domain m_and_c)
    
    (:objects
        bank1 - bank1 bank2 - bank2
        missionary1 - missionary1 missionary2 - missionary2 missionary3 - missionary3
        cannibal1 - cannibal1 cannibal2 - cannibal2 cannibal3 - cannibal3
        boat - boat
    )
    
        
        
    
    (:init
        
        (same_target missionary1 missionary1)
        (same_target missionary2 missionary2)
        (same_target missionary3 missionary3)
        (same_target cannibal1 cannibal1)
        (same_target cannibal2 cannibal2)
        (same_target cannibal3 cannibal3)
        (same_target bank1 bank1)
        (same_target bank2 bank2)
        
        (on_bank missionary1 bank1)
        (on_bank missionary2 bank1)
        (on_bank missionary3 bank1)
        (on_bank cannibal1 bank1)
        (on_bank cannibal2 bank1)
        (on_bank cannibal3 bank1)
        
        (at_bank boat bank1)
        
        (boat_empty boat)
    )
    
    (:goal
        (and
            (on_bank missionary1 bank2)
            (on_bank missionary2 bank2)
            (on_bank missionary3 bank2)
            (on_bank cannibal1 bank2)
            (on_bank cannibal2 bank2)
            (on_bank cannibal3 bank2)
        )
    )
)