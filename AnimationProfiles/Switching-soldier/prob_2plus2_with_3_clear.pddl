(define (problem prob_2plus2_with_3_clear)
    (:domain soldier_move)
    
    (:objects 
        ground1 ground2 ground3 ground4 ground5 
        leftPerson1 leftPerson2 
        rightPerson1 rightPerson2 
    )
    
    (:init
        (leftPerson leftPerson1)
        (leftPerson leftPerson2)
        
        (rightPerson rightPerson1)
        (rightPerson rightPerson2)
        
        (ground ground1)
        (ground ground2)
        (ground ground3)
        (ground ground4)
        (ground ground5)
        
        (nextGround ground1 ground2)
        (nextGround ground2 ground3)
        (nextGround ground3 ground4)
        (nextGround ground4 ground5)
        
        (groundClear ground3)
                
        (onGround leftPerson1 ground1)
        (onGround leftPerson2 ground2)
        
        (onGround rightPerson1 ground4)
        (onGround rightPerson2 ground5)
    )
    
   
    (:goal
        (and
            (onGround leftPerson1 ground4)
            (onGround leftPerson2 ground5)
                
            (onGround rightPerson1 ground1)
            (onGround rightPerson2 ground2)
        )
    )
    
    
)











