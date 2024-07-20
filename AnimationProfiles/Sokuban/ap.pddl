(define (animation sokuban)
    (:cost_keyword total-cost)
  
    (:predicate IS-NONGOAL
        :parameters (?p)
        :priority 0
        :effect(
           (assign (?p x y) (function distribute_grid_around_point (objects ?p)))
           (equal (?p color) #873e23)
        )
    )

    (:predicate IS-GOAL
        :parameters (?p)
        :priority 5
        :effect(

            (assign (?p x y) (function distribute_grid_around_point (objects ?p)) )
            (equal (?p prefabImage) img-circle)
            (equal (?p color) red)

        )
    )

        (:predicate at
        :parameters (?t ?l)
        :priority 2
        :effect (
            (equal (?t y) (?l y))
            (equal (?t x) (?l x))
            (equal (?l color) white)

        )
    )
    


    (:predicate clear
        :parameters (?p)
        :priority 1
        :effect (
           (equal (?p color) white)
        )
    )

  
  (:visual pos
            :type default
            :properties(
              (prefabImage img-road)
              (showName FALSE)
              (x Null)
              (y Null)
              (color white)
              (width 80)
              (height 80)
              (depth 1)
          )
  )

    (:visual player
            :type predefine

            :objects %player
            :properties(
              (prefabImage img-player)
              (showName FALSE)
              (x Null)
              (y Null)
              (color black)
              (width 80)
              (height 80)
              (depth 2)
          )
  )

  (:visual stone
            :type predefine
            :objects %stone
            :properties(
              (prefabImage img-box)
              (showName FALSE)
              (x Null)
              (y Null)
              (color yellow)
              (width 80)
              (height 80)
              (depth 2)
          )
)






  
    (:image
        (img-circle iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAqVJREFUaEPtmb+PEkEUx79vWcbKs5DYGMBccYCx0GhhxVmrvb/O2Jpoa/RP0NhqYmtUOHu11qssNFoY+VFcBGJjsNCrHGCfGXQTYtzZmWU33Fyg5c2b72fee/PjLcHxHzmuH0uARUdwGYE9GYHWYRyc5PNFMeGVMYAgRz9zo9Gg9hXf0wZOJYX4DPzOtrjIhLPEuKQTyYwmeXhZ6cnnBCi+uX5zAaiVppy4RcB1Bg7YKCHgBwOPeCLvzxOZxACd8r4bzPzARnSULRHdrPR+PUziyxrg3Unk9w/FY45JFVsxRGjuFOS1U+8xshlrBaBSxvPECyactpnE1JYYb4NAnrdJKWOA6cp/E1tZiQ8hFcTOIVk3jYQxQKcsGmmnTXRNoFnpycsmkTMCSLNgTUQpG9PCjgX4u1UOTSdO044nshBXD7EA7ZK4C+B2msIsfN2r9uUdnb0WgAG/WxJD20PKQqDWVB12a6uyQK+jT2wtQLssroDxNC1BCf1crfZlpAYtQKsoGkT6u01CUcbDmNCsaXYkfQRKgo1nytCw2peROiP/WOTu8+9a6HajSIBPR/LH/YA+ZLiwxq7HHp849mX08X8DIgE+F/26R94b41kyNPQ4WF8bjLesALpFvx7sEoCAg/WjtgDOp5DzRazyre3yNqoAWmXRiHukZ1i7U9eqCVAbRF+t4w6yDQBPshYZcyHaqPbks8i3g26wapd0txd8mevLgq79srev09M6+NP7cfdBoyCcflKGNeL0o15BON9WCevB2cZWmEpOtxZnz4w0C9u0B2R1nTY5fZ1ur88CqvZLpywucIBzcU0A9UgnxqvKqtzUtUtMFlDZxJ7Epo5m7cJPTN6EV3wAcrd/YkoCmdaYTCKQljgTP0sAk1XK0mYZgSxX18T3b6LzKEA0mU0qAAAAAElFTkSuQmCC)
        (img-road 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)
        (img-box iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAb9JREFUaEPtWUtOxDAM7SAqVCRYwEm4AntOy5JDzElgAdJUqAhQOsrIZJwmdmLXqehqJvPJe372i5PsDi+PP13Dz24zBIb7u6Z0GF/fZrwnBRyB5/2RxNPD8UNrD8S3TQLWIr6E50yBlsBDrNt1IS8RdCdszEWjdPx7mrrP9485sJfD0PXXwynIqf+OupAWAQw85jahSyZdSIPA1e0NGnk2AVgcGgT8fGHa+PHpMHZf4zi/DRdaVIE1COSAN0VgqWCxyPsxEwpQwcMaWZ0AB/xF3yct+o+NStVAzG3gfLBg3fcd+Jw1RoUAxW3CgiUtZFIKYCtsbsGuRoCT876doLQvIinEAR8rWHUFuOBjBatKoMRtTBAocRszBHJ7m6X+RrWIOTmPuc0qCnDA57QHKgpwwee0B+IEJNxGNYUk3EadQG23ESfAyXmK24gS4ICnuo0YgZKCTfUxsW1iVReiFCzcSVHtUkwBymYkJ6JUYikVk/sBLbepokDOkZ6bKNyA13CbHAKkGxooHfwhdnqQkrkktWI4WEeL3KOPWgSwQ4ftXHBAdi29jrqQdRLJCw6LBEgu1CQBi6BjmP7via2o9QvT9jvNG/Q+ogAAAABJRU5ErkJggg==)
        (img-player iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAi9JREFUaEPdmMtRw0AMhqUOaICBEjiFAwfIFUrgQA9QAFAAtMDjQAncGJIZJgculEApwsqsPc6yD2m98a7jCxnidfT9v6SVF2HiF048fkgCIKIHALg28I/8FxFvSoihBrCCt2MWwxDRuVl8az3kSyNGboB+LAzzgYjv/E9HwLOAYxftupirKoCI+rHf0nz/jYjHkgVaAJI8NNM9IhfEACOq3/KLXNAAjKl+CxF1QQRQQP2dAVgh4kmopqQOlEgfkQtRgILpkw2gpPoMEUyjoAMVqL92ARG9ccYASqsfTSMvQC3qGwLvpuYEIKIzAHgFgP1MY8HQx3jrYAPABM7jLQPUdjl35Q6AiO6aqdeezWuCeEPESzsgrFx1l4BzRFy0XzDAZ6UpE3L/vumsnDHAAPzhdKoQoS7EYAc9GfY8n0vWyTy0D0witUIANXWlFwB47gq3X8Q+/013YhdquLqi/ddGdxaAwWppsUOm0RoK2Zs+630glOCV1EE6QA1pFEqfqAMGoGQ7DaovAijpQkx9DQC/H4y9J0TVFwOUcEGivhZgTBdE6qsAjAs8j1xtebZYNi8s4lfa6MmcHSwR/QDA0bYgpKnTDXYpgRDRbzMdHqasjazZeF2UPF/tgEkltvgpM4Q6eHUNONIp16yUFPxggAw7NZ8ucMfpThkkadO/JymFHE6kjBviVhmCygLQ/oDwcGyw6tkd8DjSP6rhoJfN0c1iSLq4nMjqgDZ/c9w/eYA/87fkajhq/jAAAAAASUVORK5CYII=)
        
    )
)