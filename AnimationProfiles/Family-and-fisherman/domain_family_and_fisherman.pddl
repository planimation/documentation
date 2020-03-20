(define (domain family_and_fisherman)
    (:requirements :strips)
    (:types adult child bank boat)
    
    (:predicates
        (on_bank ?target - (either adult child) ?bank - bank)
            
        (at_bank ?boat - boat ?bank - bank)
        
        (same_target ?target1 ?target2 - (either adult child bank))
            
        (target_in_boat ?target - (either adult child) ?boat - boat)
        
        (boat_full ?boat - boat)
        (boat_half_full ?boat - boat)
        (boat_empty ?boat - boat)
    )
    
    (:action boat_move
        :parameters (?boat - boat ?from ?to - bank)
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
    
    (:action adult_gets_on_boat
        :parameters (?target - adult ?boat - boat ?location - bank)
        :precondition   (and
                            (boat_empty ?boat)
                            (on_bank ?target ?location)
                            (not (target_in_boat ?target ?boat))
                            (at_bank ?boat ?location)
                        )
        :effect (and
                    (not (boat_empty ?boat))
                    (boat_full ?boat)
                    (not (on_bank ?target ?location))
                    (target_in_boat ?target ?boat)
                )
    )
    
    (:action child_gets_on_empty_boat
        :parameters (?target - child ?boat - boat ?location - bank)
        :precondition   (and
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
    
    (:action child_gets_on_half_full_boat
        :parameters (?target - child ?boat - boat ?location - bank)
        :precondition   (and
                            (boat_half_full ?boat)
                            (on_bank ?target ?location)
                            (not (target_in_boat ?target ?boat))
                            (at_bank ?boat ?location)
                        )
        :effect (and
                    (not (boat_half_full ?boat))
                    (boat_full ?boat)
                    (not (on_bank ?target ?location))
                    (target_in_boat ?target ?boat)
                )
    )
    
    (:action adult_gets_off_boat
        :parameters (?target - adult ?boat - boat ?location - bank)
        :precondition   (and
                            (boat_full ?boat)
                            (at_bank ?boat ?location)
                            (target_in_boat ?target ?boat)
                        )
        :effect (and
                    (not (boat_full ?boat))
                    (boat_empty ?boat)
                    (on_bank ?target ?location)
                    (not (target_in_boat ?target ?boat))
                )
    )
    
    (:action child_gets_off_full_boat
        :parameters (?target - child ?boat - boat ?location - bank)
        :precondition   (and
                            (boat_full ?boat)
                            (at_bank ?boat ?location)
                            (target_in_boat ?target ?boat)
                        )
        :effect (and
                    (not (boat_full ?boat))
                    (boat_half_full ?boat)
                    (on_bank ?target ?location)
                    (not (target_in_boat ?target ?boat))
                )
    )
    
    (:action child_gets_off_half_full_boat
        :parameters (?target - child ?boat - boat ?location - bank)
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
)
