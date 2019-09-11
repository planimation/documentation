(define (domain m_and_c)
    (:requirements :strips)
    (:types missionary1 missionary2 missionary3 cannibal1 cannibal2 cannibal3 bank1 bank2 boat)
    
    (:predicates
        (on_bank ?obj - (either missionary1 missionary2 missionary3 cannibal1 
            cannibal2 cannibal3) ?bank - (either bank1 bank2))
            
        (at_bank ?boat - boat ?bank - (either bank1 bank2))
        
        (same_target ?target1 ?target2 - (either missionary1 missionary2 
            missionary3 cannibal1 cannibal2 cannibal3 bank1 bank2))
            
        (target_in_boat ?target - (either missionary1 missionary2 
            missionary3 cannibal1 cannibal2 cannibal3) ?boat - boat)
        
        (boat_full ?boat - boat)
        (boat_half_full ?boat - boat)
        (boat_empty ?boat - boat)
    )
    
    (:action boat_move
        :parameters (?boat - boat ?from ?to - (either bank1 bank2))
        :precondition   (and
                            (not (same_target ?from ?to))
                            (not (boat_empty ?boat))
                            (at_bank ?boat ?from)
                        )
        :effect (and
                    (not (at_bank ?boat ?from))
                    (at_bank ?boat ?to)
        )
    )
    
    (:action one_get_on_boat
        :parameters (?target - (either missionary1 missionary2 missionary3 cannibal1 
                        cannibal2 cannibal3) ?boat - boat ?location - (either bank1 bank2) 
                        ?m1 - missionary1 ?m2 - missionary2 ?m3 - missionary3 ?c1 - cannibal1 
                        ?c2 - cannibal2 ?c3 - cannibal3 ?b1 - bank1 ?b2 - bank2)
        :precondition   (and
                            (or
                                ;below is 6:0
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b1)
                                )
                                
                                ;below 3 are 5:1
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                
                                ;below 12 are 2:4
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b2)
                                )
                                
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                
                                ;below 2 are 3:3
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b2)
                                )
                                
                                ;below 12 are 4:2
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b1)
                                )
                                
                                ;below 3 are 1:5
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                
                                ;the goal state is not needed here
                            )
                            
                            (boat_empty ?boat)
                            (on_bank ?target ?location)
                            (not (target_in_boat ?target ?boat))
                            (at_bank ?boat ?location)
                        )
        :effect (and
                    (not (boat_empty ?boat))
                    (boat_half_full ?boat)
                    (not (on_bank ?target ?location))
                    (target_in_boat ?target ?boat)
                )
    )
    
    (:action two_get_on_boat
        :parameters (?target1 ?target2 - (either missionary1 missionary2 missionary3 
                        cannibal1 cannibal2 cannibal3) ?boat - boat ?location - (either bank1 bank2) 
                        ?m1 - missionary1 ?m2 - missionary2 ?m3 - missionary3 ?c1 - cannibal1 
                        ?c2 - cannibal2 ?c3 - cannibal3 ?b1 - bank1 ?b2 - bank2)
        :precondition   (and
                            (or
                                ;below is 6:0
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b1)
                                )
                                
                                ;below 3 are 5:1
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                
                                ;below 12 are 2:4
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b2)
                                )
                                
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                
                                ;below 2 are 3:3
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b2)
                                )
                                
                                ;below 12 are 4:2
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b1)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b1)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b1)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b1)
                                )
                                
                                ;below 3 are 1:5
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b1)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b1)
                                    (on_bank ?c3 ?b2)
                                )
                                (and
                                    (on_bank ?m1 ?b2)
                                    (on_bank ?m2 ?b2)
                                    (on_bank ?m3 ?b2)
                                    (on_bank ?c1 ?b2)
                                    (on_bank ?c2 ?b2)
                                    (on_bank ?c3 ?b1)
                                )
                                
                                ;the goal state is not needed here
                            )
                            
                            (boat_empty ?boat)
                            (not (same_target ?target1 ?target2))
                            (on_bank ?target1 ?location)
                            (on_bank ?target2 ?location)
                            (not (target_in_boat ?target1 ?boat))
                            (not (target_in_boat ?target2 ?boat))
                            (at_bank ?boat ?location)
                        )
        :effect (and
                    (not (boat_empty ?boat))
                    (boat_full ?boat)
                    (not (on_bank ?target1 ?location))
                    (not (on_bank ?target2 ?location))
                    (target_in_boat ?target1 ?boat)
                    (target_in_boat ?target2 ?boat)
                )
    )
    
    (:action one_get_off_boat
        :parameters (?target - (either missionary1 missionary2 missionary3 cannibal1 
                        cannibal2 cannibal3) ?boat - boat ?location - (either bank1 bank2) 
                        ?m1 - missionary1 ?m2 - missionary2 ?m3 - missionary3 ?c1 - cannibal1 
                        ?c2 - cannibal2 ?c3 - cannibal3 ?b1 - bank1 ?b2 - bank2)
        :precondition   (and
                            (boat_half_full ?boat)
                            (at_bank ?boat ?location)
			    (target_in_boat ?target ?boat)
                        )
        :effect (and
                    (not (boat_half_full ?boat))
                    (boat_empty ?boat)
                    (on_bank ?target ?location)
                    (not (target_in_boat ?target ?boat))
                )
    )
    
    (:action two_get_off_boat
        :parameters (?target1 ?target2 - (either missionary1 missionary2 missionary3 
                        cannibal1 cannibal2 cannibal3) ?boat - boat ?location - (either bank1 bank2) 
                        ?m1 - missionary1 ?m2 - missionary2 ?m3 - missionary3 ?c1 - cannibal1 
                        ?c2 - cannibal2 ?c3 - cannibal3 ?b1 - bank1 ?b2 - bank2)
        :precondition   (and
                            (boat_full ?boat)
                            (at_bank ?boat ?location)
 			    (target_in_boat ?target1 ?boat)
                            (target_in_boat ?target2 ?boat)
                        )
        :effect (and
                    (not (boat_full ?boat))
                    (boat_empty ?boat)
                    (on_bank ?target1 ?location)
                    (on_bank ?target2 ?location)
                    (not (target_in_boat ?target1 ?boat))
                    (not (target_in_boat ?target2 ?boat))
                )
    )
)
