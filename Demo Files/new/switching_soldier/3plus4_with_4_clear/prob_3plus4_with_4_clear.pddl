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
        
        (groundClear ground4)
                
        (onGround leftPerson1 ground1)
        (onGround leftPerson2 ground2)
        (onGround leftPerson3 ground3)
        
        (onGround rightPerson1 ground5)
        (onGround rightPerson2 ground6)
        (onGround rightPerson3 ground7)
        (onGround rightPerson4 ground8)
    )
    
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











