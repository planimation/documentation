(define (problem prob_4plus4_with_5_clear)
    (:domain soldier_move)
    
    (:objects 
        ground1 ground2 ground3 ground4 ground5 ground6 ground7 ground8 ground9 ground10 
        ground11 ground12 ground13 ground14 ground15 ground16 ground17 ground18 ground19 ground20 
        leftPerson1 leftPerson2 leftPerson3 leftPerson4 leftPerson5
        leftPerson6 leftPerson7 leftPerson8 leftPerson9 
        rightPerson1 rightPerson2 rightPerson3 rightPerson4 rightPerson5
        rightPerson6 rightPerson7 rightPerson8 rightPerson9 rightPerson10
    )
    
    (:init
        (leftPerson leftPerson1)
        (leftPerson leftPerson2)
        (leftPerson leftPerson3)
        (leftPerson leftPerson4)
        (leftPerson leftPerson5)
        (leftPerson leftPerson6)
        (leftPerson leftPerson7)
        (leftPerson leftPerson8)
        (leftPerson leftPerson9)
        
        (rightPerson rightPerson1)
        (rightPerson rightPerson2)
        (rightPerson rightPerson3)
        (rightPerson rightPerson4)
        (rightPerson rightPerson5)
        (rightPerson rightPerson6)
        (rightPerson rightPerson7)
        (rightPerson rightPerson8)
        (rightPerson rightPerson9)
        (rightPerson rightPerson10)
        
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
        (ground ground13)
        (ground ground14)
        (ground ground15)
        (ground ground16)
        (ground ground17)
        (ground ground18)
        (ground ground19)
        (ground ground20)
        
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
        (nextGround ground12 ground13)
        (nextGround ground13 ground14)
        (nextGround ground14 ground15)
        (nextGround ground15 ground16)
        (nextGround ground16 ground17)
        (nextGround ground17 ground18)
        (nextGround ground18 ground19)
        (nextGround ground19 ground20)
        
        (groundClear ground10)
                
        (onGround leftPerson1 ground1)
        (onGround leftPerson2 ground2)
        (onGround leftPerson3 ground3)
        (onGround leftPerson4 ground4)
        (onGround leftPerson5 ground5)
        (onGround leftPerson6 ground6)
        (onGround leftPerson7 ground7)
        (onGround leftPerson8 ground8)
        (onGround leftPerson9 ground9)
        
        (onGround rightPerson1 ground11)
        (onGround rightPerson2 ground12)
        (onGround rightPerson3 ground13)
        (onGround rightPerson4 ground14)
        (onGround rightPerson5 ground15)
        (onGround rightPerson6 ground16)
        (onGround rightPerson7 ground17)
        (onGround rightPerson8 ground18)
        (onGround rightPerson9 ground19)
        (onGround rightPerson10 ground20)
    )
    
   
    (:goal
        (and
            (onGround leftPerson1 ground12)
            (onGround leftPerson2 ground13)
            (onGround leftPerson3 ground14)
            (onGround leftPerson4 ground15)
            (onGround leftPerson5 ground16)
            (onGround leftPerson6 ground17)
            (onGround leftPerson7 ground18)
            (onGround leftPerson8 ground19)
            (onGround leftPerson9 ground20)
                
            (onGround rightPerson1 ground1)
            (onGround rightPerson2 ground2)
            (onGround rightPerson3 ground3)
            (onGround rightPerson4 ground4)
            (onGround rightPerson5 ground5)
            (onGround rightPerson6 ground6)
            (onGround rightPerson7 ground7)
            (onGround rightPerson8 ground8)
            (onGround rightPerson9 ground9)
            (onGround rightPerson10 ground10)
        )
    )
    
    
)











