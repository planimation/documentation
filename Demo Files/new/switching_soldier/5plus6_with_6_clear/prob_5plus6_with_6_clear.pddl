(define (problem prob_5plus6_with_6_clear)
    (:domain soldier_move)
    
    (:objects 
        ground1 ground2 ground3 ground4 ground5 ground6 ground7 ground8 ground9 ground10 ground11 ground12
        leftPerson1 leftPerson2 leftPerson3 leftPerson4 leftPerson5
        rightPerson1 rightPerson2 rightPerson3 rightPerson4 rightPerson5 rightPerson6
    )
    
    (:init
        (leftPerson leftPerson1)
        (leftPerson leftPerson2)
        (leftPerson leftPerson3)
        (leftPerson leftPerson4)
        (leftPerson leftPerson5)
        
        (rightPerson rightPerson1)
        (rightPerson rightPerson2)
        (rightPerson rightPerson3)
        (rightPerson rightPerson4)
        (rightPerson rightPerson5)
        (rightPerson rightPerson6)
        
        (ground ground1)
        (ground ground2)
        (ground ground3)
        (ground ground4)
        (ground ground5)
        (ground ground6)
        (ground ground7)
        (ground ground8)
        (ground ground9)
        (ground ground10)
        (ground ground11)
        (ground ground12)
        
        (nextGround ground1 ground2)
        (nextGround ground2 ground3)
        (nextGround ground3 ground4)
        (nextGround ground4 ground5)
        (nextGround ground5 ground6)
        (nextGround ground6 ground7)
        (nextGround ground7 ground8)
        (nextGround ground8 ground9)
        (nextGround ground9 ground10)
        (nextGround ground10 ground11)
        (nextGround ground11 ground12)
        
        
        (groundClear ground6)
        
        
        (onGround leftPerson1 ground1)
        (onGround leftPerson2 ground2)
        (onGround leftPerson3 ground3)
        (onGround leftPerson4 ground4)
        (onGround leftPerson5 ground5)
        
        (onGround rightPerson1 ground7)
        (onGround rightPerson2 ground8)
        (onGround rightPerson3 ground9)
        (onGround rightPerson4 ground10)
        (onGround rightPerson5 ground11)
        (onGround rightPerson6 ground12)
    )
    
    
    (:goal 
        (and
            (onGround leftPerson1 ground8)
            (onGround leftPerson2 ground9)
            (onGround leftPerson3 ground10)
            (onGround leftPerson4 ground11)
            (onGround leftPerson5 ground12)
            
            (onGround rightPerson1 ground1)
            (onGround rightPerson2 ground2)
            (onGround rightPerson3 ground3)
            (onGround rightPerson4 ground4)
            (onGround rightPerson5 ground5)
            (onGround rightPerson6 ground6)
        )
    )
    

    
    
)











