(define (problem prob_3plus4_with_4_clear)
    (:domain soldier_move)
    
    (:objects 
        ground1 ground2 ground3 ground4 ground5 ground6 ground7 ground8 
        leftPerson1 leftPerson2 leftPerson3 rightPerson1 rightPerson2 rightPerson3 rightPerson4
    )
    
    (:init
        (leftPerson leftPerson1)
        (leftPerson leftPerson2)
        (leftPerson leftPerson3)
        
        (rightPerson rightPerson1)
        (rightPerson rightPerson2)
        (rightPerson rightPerson3)
        (rightPerson rightPerson4)
        
        (ground ground1)
        (ground ground2)
        (ground ground3)
        (ground ground4)
        (ground ground5)
        (ground ground6)
        (ground ground7)
        (ground ground8)
        
        (nextGround ground1 ground2)
        (nextGround ground2 ground3)
        (nextGround ground3 ground4)
        (nextGround ground4 ground5)
        (nextGround ground5 ground6)
        (nextGround ground6 ground7)
        (nextGround ground7 ground8)
        
        
        ;(groundClear ground1)
        ;(groundClear ground2)
        ;(groundClear ground3)
        (groundClear ground4)
        ;(groundClear ground5)
        ;(groundClear ground6)
        ;(groundClear ground7)
        
        
        (onGround leftPerson1 ground1)
        (onGround leftPerson2 ground2)
        (onGround leftPerson3 ground3)
        
        (onGround rightPerson1 ground5)
        (onGround rightPerson2 ground6)
        (onGround rightPerson3 ground7)
        (onGround rightPerson4 ground8)
    )
    
    ; (:goal 
    ;     (and
    ;         (or
    ;             (and
    ;                 (onGround leftPerson1 ground6)
    ;                 (onGround leftPerson2 ground7)
    ;                 (onGround leftPerson3 ground8)
    ;             )
    ;             (and
    ;                 (onGround leftPerson1 ground6)
    ;                 (onGround leftPerson2 ground8)
    ;                 (onGround leftPerson3 ground7)
    ;             )
    ;             (and
    ;                 (onGround leftPerson1 ground7)
    ;                 (onGround leftPerson2 ground6)
    ;                 (onGround leftPerson3 ground8)
    ;             )
    ;             (and
    ;                 (onGround leftPerson1 ground7)
    ;                 (onGround leftPerson2 ground8)
    ;                 (onGround leftPerson3 ground6)
    ;             )
    ;             (and
    ;                 (onGround leftPerson1 ground8)
    ;                 (onGround leftPerson2 ground6)
    ;                 (onGround leftPerson3 ground7)
    ;             )
    ;             (and
    ;                 (onGround leftPerson1 ground8)
    ;                 (onGround leftPerson2 ground7)
    ;                 (onGround leftPerson3 ground6)
    ;             )
               
    ;         )
            
            
    ;         (or
    ;             (and
    ;                 (onGround rightPerson1 ground1)
    ;                 (onGround rightPerson2 ground2)
    ;                 (onGround rightPerson3 ground3)
    ;                 (onGround rightPerson4 ground4)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground1)
    ;                 (onGround rightPerson2 ground2)
    ;                 (onGround rightPerson3 ground4)
    ;                 (onGround rightPerson4 ground3)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground1)
    ;                 (onGround rightPerson2 ground3)
    ;                 (onGround rightPerson3 ground2)
    ;                 (onGround rightPerson4 ground4)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground1)
    ;                 (onGround rightPerson2 ground3)
    ;                 (onGround rightPerson3 ground4)
    ;                 (onGround rightPerson4 ground2)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground1)
    ;                 (onGround rightPerson2 ground4)
    ;                 (onGround rightPerson3 ground2)
    ;                 (onGround rightPerson4 ground3)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground1)
    ;                 (onGround rightPerson2 ground4)
    ;                 (onGround rightPerson3 ground3)
    ;                 (onGround rightPerson4 ground2)
    ;             )
                
    ;             (and
    ;                 (onGround rightPerson1 ground2)
    ;                 (onGround rightPerson2 ground1)
    ;                 (onGround rightPerson3 ground3)
    ;                 (onGround rightPerson4 ground4)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground2)
    ;                 (onGround rightPerson2 ground1)
    ;                 (onGround rightPerson3 ground4)
    ;                 (onGround rightPerson4 ground3)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground2)
    ;                 (onGround rightPerson2 ground3)
    ;                 (onGround rightPerson3 ground1)
    ;                 (onGround rightPerson4 ground4)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground2)
    ;                 (onGround rightPerson2 ground3)
    ;                 (onGround rightPerson3 ground4)
    ;                 (onGround rightPerson4 ground1)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground2)
    ;                 (onGround rightPerson2 ground4)
    ;                 (onGround rightPerson3 ground1)
    ;                 (onGround rightPerson4 ground3)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground2)
    ;                 (onGround rightPerson2 ground4)
    ;                 (onGround rightPerson3 ground3)
    ;                 (onGround rightPerson4 ground1)
    ;             )
                
    ;             (and
    ;                 (onGround rightPerson1 ground3)
    ;                 (onGround rightPerson2 ground1)
    ;                 (onGround rightPerson3 ground2)
    ;                 (onGround rightPerson4 ground4)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground3)
    ;                 (onGround rightPerson2 ground1)
    ;                 (onGround rightPerson3 ground4)
    ;                 (onGround rightPerson4 ground2)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground3)
    ;                 (onGround rightPerson2 ground2)
    ;                 (onGround rightPerson3 ground1)
    ;                 (onGround rightPerson4 ground4)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground3)
    ;                 (onGround rightPerson2 ground2)
    ;                 (onGround rightPerson3 ground4)
    ;                 (onGround rightPerson4 ground2)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground3)
    ;                 (onGround rightPerson2 ground4)
    ;                 (onGround rightPerson3 ground1)
    ;                 (onGround rightPerson4 ground2)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground3)
    ;                 (onGround rightPerson2 ground4)
    ;                 (onGround rightPerson3 ground2)
    ;                 (onGround rightPerson4 ground1)
    ;             )
                
    ;             (and
    ;                 (onGround rightPerson1 ground4)
    ;                 (onGround rightPerson2 ground1)
    ;                 (onGround rightPerson3 ground2)
    ;                 (onGround rightPerson4 ground3)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground4)
    ;                 (onGround rightPerson2 ground1)
    ;                 (onGround rightPerson3 ground3)
    ;                 (onGround rightPerson4 ground2)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground4)
    ;                 (onGround rightPerson2 ground2)
    ;                 (onGround rightPerson3 ground1)
    ;                 (onGround rightPerson4 ground3)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground4)
    ;                 (onGround rightPerson2 ground2)
    ;                 (onGround rightPerson3 ground3)
    ;                 (onGround rightPerson4 ground1)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground4)
    ;                 (onGround rightPerson2 ground3)
    ;                 (onGround rightPerson3 ground1)
    ;                 (onGround rightPerson4 ground2)
    ;             )
    ;             (and
    ;                 (onGround rightPerson1 ground4)
    ;                 (onGround rightPerson2 ground3)
    ;                 (onGround rightPerson3 ground2)
    ;                 (onGround rightPerson4 ground1)
    ;             )
    ;         )
            
    ;     )
    ; )
    
    (:goal 
        (and
            (onGround leftPerson1 ground6)
            (onGround leftPerson2 ground7)
            (onGround leftPerson3 ground8)
            
            (onGround rightPerson1 ground1)
            (onGround rightPerson2 ground2)
            (onGround rightPerson3 ground3)
            (onGround rightPerson4 ground4)
        )
    )
    
    
)











