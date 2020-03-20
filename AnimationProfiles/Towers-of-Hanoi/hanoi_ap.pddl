(define (animation hanoi)

; Defines the Animation profile for Towers of Hanoi
; See AP Guide.md for information on the language.
; Available at https://bitbucket.org/planning-researchers/classical-domains/src/208a850d2ff2a27068329ad578ad99af9ec7e5c5/classical/?at=master
; 08/10/2018
; Written for Project Planning Visualisation
; By Yi Ding

; Specifies that an object is on top of another object
; align_middle is used to align the x values of the objects
  (:predicate on
               :parameters (?x ?y)
               :priority 1
               :effect (
               (assign (?x x) (function align_middle (objects ?x ?y)))
               (equal (?x y) (add (?y y) 20 1))
  )
  )
; Specifies that an object is smaller than another object
; apply_smaller is used to achieve this
   (:predicate smaller
               :parameters (?x ?y)
               :priority 0
               :effect(
               (assign (?x width) (function apply_smaller (objects ?x ?y) (settings (increase_width 6))))
               )
  )

; Visual object representing the leftmost peg
  (:visual peg1
            :type predefine
            :objects (peg1)
            :properties(
              (prefabImage img-square)
              (showName TRUE)
              (x 80)
              (y 0)
              (color BLACK)
              (width 5)
              (height 220)
              (depth 0)
            )
  )

; Visual object representing the middle peg
   (:visual peg2
            :type predefine
            :objects (peg2)
            :properties(
              (prefabImage img-square)
              (showName TRUE)
              (x 200)
              (y 0)
              (color BLACK)
              (width 5)
              (height 220)
              (depth 0)
            )
  )

; Visual object representing the rightmost peg
   (:visual peg3
            :type predefine
            :objects (peg3)
            :properties(
              (prefabImage img-square)
              (showName TRUE)
              (x 320)
              (y 0)
              (color BLACK)
              (width 5)
              (height 220)
              (depth 0)
            )
  )

; Default visual object representing a disk.
  (:visual disk
            :type default
            :properties(
              (prefabImage img-square)
              (showName TRUE)
              (x Null)
              (y Null)
              (color RANDOMCOLOR)
              (width 20)
              (height 20)
              (depth 1)
          )
  )
; Custom object representing the board on which the pegs sit
    (:visual board
            :type custom
            :objects board
            :properties(
              (prefabImage img-square)
              (showName false)
              (x 0)
              (y 0)
              (color #14a5db)
              (width 400)
              (height 20)
              (depth 1)
          )
  )
 (:image (img-square iVBORw0KGgoAAAANSUhEUgAAAXEAAAFxCAIAAAAK5Q/zAAABN2lDQ1BBZG9iZSBSR0IgKDE5OTgpAAAokZWPv0rDUBSHvxtFxaFWCOLgcCdRUGzVwYxJW4ogWKtDkq1JQ5ViEm6uf/oQjm4dXNx9AidHwUHxCXwDxamDQ4QMBYvf9J3fORzOAaNi152GUYbzWKt205Gu58vZF2aYAoBOmKV2q3UAECdxxBjf7wiA10277jTG+38yH6ZKAyNguxtlIYgK0L/SqQYxBMygn2oQD4CpTto1EE9AqZf7G1AKcv8ASsr1fBBfgNlzPR+MOcAMcl8BTB1da4Bakg7UWe9Uy6plWdLuJkEkjweZjs4zuR+HiUoT1dFRF8jvA2AxH2w3HblWtay99X/+PRHX82Vun0cIQCw9F1lBeKEuf1UYO5PrYsdwGQ7vYXpUZLs3cLcBC7dFtlqF8hY8Dn8AwMZP/fNTP8gAAAAJcEhZcwAACxMAAAsTAQCanBgAAAXxaVRYdFhNTDpjb20uYWRvYmUueG1wAAAAAAA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzE0MCA3OS4xNjA0NTEsIDIwMTcvMDUvMDYtMDE6MDg6MjEgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxuczpwaG90b3Nob3A9Imh0dHA6Ly9ucy5hZG9iZS5jb20vcGhvdG9zaG9wLzEuMC8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdEV2dD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlRXZlbnQjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE4IChNYWNpbnRvc2gpIiB4bXA6Q3JlYXRlRGF0ZT0iMjAxOC0wOC0xMlQxMjoxOTo1MSsxMDowMCIgeG1wOk1vZGlmeURhdGU9IjIwMTgtMDgtMTVUMjA6MzY6NDgrMTA6MDAiIHhtcDpNZXRhZGF0YURhdGU9IjIwMTgtMDgtMTVUMjA6MzY6NDgrMTA6MDAiIGRjOmZvcm1hdD0iaW1hZ2UvcG5nIiBwaG90b3Nob3A6Q29sb3JNb2RlPSIzIiBwaG90b3Nob3A6SUNDUHJvZmlsZT0iQWRvYmUgUkdCICgxOTk4KSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo5MGRmODdjNy1lN2YxLTQ5NmMtYjE1Yy1kYjIzNDAxNDQxZWMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6ZmJlOWI4NTQtNDJlYy00ODE3LTgxNWQtMzY0YjAxMTRiODQ3IiB4bXBNTTpPcmlnaW5hbERvY3VtZW50SUQ9InhtcC5kaWQ6ZmJlOWI4NTQtNDJlYy00ODE3LTgxNWQtMzY0YjAxMTRiODQ3Ij4gPHhtcE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY3JlYXRlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDpmYmU5Yjg1NC00MmVjLTQ4MTctODE1ZC0zNjRiMDExNGI4NDciIHN0RXZ0OndoZW49IjIwMTgtMDgtMTJUMTI6MTk6NTErMTA6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE4IChNYWNpbnRvc2gpIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJzYXZlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDo5MGRmODdjNy1lN2YxLTQ5NmMtYjE1Yy1kYjIzNDAxNDQxZWMiIHN0RXZ0OndoZW49IjIwMTgtMDgtMTVUMjA6MzY6NDgrMTA6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE4IChNYWNpbnRvc2gpIiBzdEV2dDpjaGFuZ2VkPSIvIi8+IDwvcmRmOlNlcT4gPC94bXBNTTpIaXN0b3J5PiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Ppcsu5QAAASfSURBVHic7dTBCQAgEMAwdf+dzyUKgiQT9NU9Mwsgcl4HAF/xFKDkKUDJU4CSpwAlTwFKngKUPAUoeQpQ8hSg5ClAyVOAkqcAJU8BSp4ClDwFKHkKUPIUoOQpQMlTgJKnACVPAUqeApQ8BSh5ClDyFKDkKUDJU4CSpwAlTwFKngKUPAUoeQpQ8hSg5ClAyVOAkqcAJU8BSp4ClDwFKHkKUPIUoOQpQMlTgJKnACVPAUqeApQ8BSh5ClDyFKDkKUDJU4CSpwAlTwFKngKUPAUoeQpQ8hSg5ClAyVOAkqcAJU8BSp4ClDwFKHkKUPIUoOQpQMlTgJKnACVPAUqeApQ8BSh5ClDyFKDkKUDJU4CSpwAlTwFKngKUPAUoeQpQ8hSg5ClAyVOAkqcAJU8BSp4ClDwFKHkKUPIUoOQpQMlTgJKnACVPAUqeApQ8BSh5ClDyFKDkKUDJU4CSpwAlTwFKngKUPAUoeQpQ8hSg5ClAyVOAkqcAJU8BSp4ClDwFKHkKUPIUoOQpQMlTgJKnACVPAUqeApQ8BSh5ClDyFKDkKUDJU4CSpwAlTwFKngKUPAUoeQpQ8hSg5ClAyVOAkqcAJU8BSp4ClDwFKHkKUPIUoOQpQMlTgJKnACVPAUqeApQ8BSh5ClDyFKDkKUDJU4CSpwAlTwFKngKUPAUoeQpQ8hSg5ClAyVOAkqcAJU8BSp4ClDwFKHkKUPIUoOQpQMlTgJKnACVPAUqeApQ8BSh5ClDyFKDkKUDJU4CSpwAlTwFKngKUPAUoeQpQ8hSg5ClAyVOAkqcAJU8BSp4ClDwFKHkKUPIUoOQpQMlTgJKnACVPAUqeApQ8BSh5ClDyFKDkKUDJU4CSpwAlTwFKngKUPAUoeQpQ8hSg5ClAyVOAkqcAJU8BSp4ClDwFKHkKUPIUoOQpQMlTgJKnACVPAUqeApQ8BSh5ClDyFKDkKUDJU4CSpwAlTwFKngKUPAUoeQpQ8hSg5ClAyVOAkqcAJU8BSp4ClDwFKHkKUPIUoOQpQMlTgJKnACVPAUqeApQ8BSh5ClDyFKDkKUDJU4CSpwAlTwFKngKUPAUoeQpQ8hSg5ClAyVOAkqcAJU8BSp4ClDwFKHkKUPIUoOQpQMlTgJKnACVPAUqeApQ8BSh5ClDyFKDkKUDJU4CSpwAlTwFKngKUPAUoeQpQ8hSg5ClAyVOAkqcAJU8BSp4ClDwFKHkKUPIUoOQpQMlTgJKnACVPAUqeApQ8BSh5ClDyFKDkKUDJU4CSpwAlTwFKngKUPAUoeQpQ8hSg5ClAyVOAkqcAJU8BSp4ClDwFKHkKUPIUoOQpQMlTgJKnACVPAUqeApQ8BSh5ClDyFKDkKUDJU4CSpwAlTwFKngKUPAUoeQpQ8hSg5ClAyVOAkqcAJU8BSp4ClDwFKHkKUPIUoOQpQMlTgJKnACVPAUqeApQ8BSh5ClDyFKDkKUDJU4CSpwAlTwFKngKUPAUoeQpQ8hSg5ClAyVOAkqcAJU8BSp4ClDwFKHkKUPIUoOQpQMlTgJKnACVPAUqeApQ8BSh5ClDyFKDkKUDJU4CSpwAlTwFKngKUPAUoXWSoBd9t2wfhAAAAAElFTkSuQmCC)

 )
)