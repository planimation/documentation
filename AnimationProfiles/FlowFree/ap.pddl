; Title: FlowFree Animation Profile
; Author: Aditi Basu (University of Melbourne)

(define (animation FlowFree)

    (:predicate head
        :parameters (?n ?d)
        :effect (
            (equal (?d x) (?n x))
            (equal (?d y) (?n y))
            (equal (?n color) (?d color))
        )
    )
    
    (:predicate adjacent
        :parameters (?n1 ?n2)
        :effect (
            (action (function draw_line (objects ?n1 ?n2)))
        )
    )

    (:predicate filled
        :parameters (?n ?d)
        :effect (
            (equal  (?d x) (?n x))
            (equal  (?d y) (?n y))
            (equal (?n color) (?d color))
        )
    )


    (:predicate position
        :parameters (?n)
        :effect (
            (assign (?n x y) (function distribute_grid_around_point (objects ?n)))
        )
    ) 
    
    (:predicate selected
        :parameters (?d) 
        :custom color-obj
        :effect (
            (equal (color-obj color) (?d color))
        )
    )

    (:visual node
        :type default
        :properties (
            (prefabImage cell)
            (showname FALSE)
            (x NULL)
            (y NULL)
            (color WHITE)
            (width 75)
            (height 75)
            (depth 1)
        )
    )
    
    (:visual color-obj
        :type custom
        :objects color-obj
        :properties (
            (prefabImage cell)
            (showname FALSE)
            (x NULL)
            (y NULL)
            (color NULL)
            (width 75)
            (height 75)
            (depth 2)
        )
    )
    
    (:visual dotdummy
        :type predefine
        :objects dummy
        :properties (
            (prefabImage cell)
            (showname FALSE)
            (x NULL)
            (y NULL)
            (color BLACK)
            (width 75)
            (height 75)
            (depth 2)
        )
    )

    (:visual dotr
        :type predefine
        :objects r
        :properties (
            (prefabImage cell)
            (showname TRUE)
            (x NULL)
            (y NULL)
            (color RED)
            (width 75)
            (height 75)
            (depth 2)
        )
    )
    
    (:visual doty
        :type predefine
        :objects y
        :properties (
            (prefabImage cell)
            (showname TRUE)
            (x NULL)
            (y NULL)
            (color YELLOW)
            (width 75)
            (height 75)
            (depth 2)
        )
    )
    
    (:visual dotg
        :type predefine
        :objects g
        :properties (
            (prefabImage cell)
            (showname TRUE)
            (x NULL)
            (y NULL)
            (color GREEN)
            (width 75)
            (height 75)
            (depth 2)
        )
    )
    
    (:visual dotb
        :type predefine
        :objects b
        :properties (
            (prefabImage cell)
            (showname TRUE)
            (x NULL)
            (y NULL)
            (color BLUE)
            (width 75)
            (height 75)
            (depth 2)
        )
    )
    
    (:visual doto
        :type predefine
        :objects o
        :properties (
            (prefabImage cell)
            (showname TRUE)
            (x NULL)
            (y NULL)
            (color ORANGE)
            (width 75)
            (height 75)
            (depth 2)
        )
    )

    (:visual dotc
        :type predefine
        :objects c
        :properties (
            (prefabImage cell)
            (showname TRUE)
            (x NULL)
            (y NULL)
            (color CYAN)
            (width 75)
            (height 75)
            (depth 2)
        )
    )

    ; pink
    (:visual dotp
        :type predefine
        :objects p
        :properties (
            (prefabImage cell)
            (showname TRUE)
            (x NULL)
            (y NULL)
            (color #FFC0CB)
            (width 75)
            (height 75)
            (depth 2)
        )
    )

    ; purple
    (:visual dotpr
        :type predefine
        :objects pr
        :properties (
            (prefabImage cell)
            (showname TRUE)
            (x NULL)
            (y NULL)
            (color #A020F0)
            (width 75)
            (height 75)
            (depth 2)
        )
    )

    ; maroon
    (:visual dotm
        :type predefine
        :objects m
        :properties (
            (prefabImage cell)
            (showname TRUE)
            (x NULL)
            (y NULL)
            (color #800000)
            (width 75)
            (height 75)
            (depth 2)
        )
    )

    (:image
        (cell iVBORw0KGgoAAAANSUhEUgAAAVwAAAFcBAMAAAB2OBsfAAAAFVBMVEXu7u7///8AAAAjIyPb29vMzMyTk5MmP6IzAAABxklEQVR42u3YQWrCUBQF0KS4gAQ3ILVmbgXHInEDohvQ/e+h1uioRf6vmP8o586eo4Mg3n+rdkhTDYl+4uLi4uLi4uLihjirqr59EvzExcXFxcXFxcUtzlXPcXFx/yk3SNK451WArFO50/cQWSZyTzG4XSL3MwZ3jov7kPuzWdYX7mLSX3MccuhHPg+Xn/u8Sarn39xZ6T+IbRb3o/Dzod7j4uLi4uLi4j7B/b3vLprCw8I2q57j4uLi4uLi4uKOx1XPcXFxcXFxcXFxLZC4uLi4uLi4uLgWSK8JXFxcXFxcXFwLpNcELi4uLi4uLq4FUj3HxcXFxcXFxbVAque4uLi4uLi4uLgWSFxcXFxcXFxcXAskLi4uLi4uLi6uBdJrAhcXFxcXFxfXAuk1gYuLi4uLi4trgVTPcXFxcXFxcXEtkOo5Li4uLi4uLi6uBRIXFxcXFxcXF9cCiYuLi4uLi4uLa4H0msDFxcXFxcXFtUC+vp7fv91iecvidrvjNf2Q2zXeudlncSMEFzebe4rB7RK50xjcZSK3Pa8CZN2mcsMklRv2xMV9sEBGPnFxcXFxcXFxcYtz1XNcXFxcXFxcXFwLJO6fzi9Y1CC2F4iEWwAAAABJRU5ErkJggg==)
        (line  iVBORw0KGgoAAAANSUhEUgAAA84AAAAFCAIAAAAbsCLlAAAACXBIWXMAAAsTAAALEwEAmpwYAAAGwGlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS42LWMxNDAgNzkuMTYwNDUxLCAyMDE3LzA1LzA2LTAxOjA4OjIxICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtbG5zOnN0RXZ0PSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VFdmVudCMiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxuczpwaG90b3Nob3A9Imh0dHA6Ly9ucy5hZG9iZS5jb20vcGhvdG9zaG9wLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDpBQTA1RUE1QjMzMjA2ODExODIyQUM4NjE0MERCRDI1NiIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpFNUU1MTE2OEZBQTExMUUzODBFQ0E4Mjg2RkNEODNGOSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo2MGJhZmVjNy1iMDY3LTRlYWMtYTdhYS0yOWQyNGFkYmEyZTYiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKSIgeG1wOkNyZWF0ZURhdGU9IjIwMTgtMDgtMTJUMTI6MjA6MzMrMTA6MDAiIHhtcDpNb2RpZnlEYXRlPSIyMDE4LTA4LTE1VDIwOjM2OjQyKzEwOjAwIiB4bXA6TWV0YWRhdGFEYXRlPSIyMDE4LTA4LTE1VDIwOjM2OjQyKzEwOjAwIiBkYzpmb3JtYXQ9ImltYWdlL3BuZyIgcGhvdG9zaG9wOkNvbG9yTW9kZT0iMyIgcGhvdG9zaG9wOklDQ1Byb2ZpbGU9InNSR0IgSUVDNjE5NjYtMi4xIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6RkI3RjExNzQwNzIwNjgxMTgzRDE5QTYzMUY5NDkyQUEiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QUEwNUVBNUIzMzIwNjgxMTgyMkFDODYxNDBEQkQyNTYiLz4gPHhtcE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6YjhhMTA1MjQtNGViMS00NGEwLWI4ZDgtNGQwNWY2Y2U2NjdhIiBzdEV2dDp3aGVuPSIyMDE4LTA4LTEyVDEyOjIxOjU0KzEwOjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOCAoTWFjaW50b3NoKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6NjBiYWZlYzctYjA2Ny00ZWFjLWE3YWEtMjlkMjRhZGJhMmU2IiBzdEV2dDp3aGVuPSIyMDE4LTA4LTE1VDIwOjM2OjQyKzEwOjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOCAoTWFjaW50b3NoKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8L3JkZjpTZXE+IDwveG1wTU06SGlzdG9yeT4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5XefbLAAAAOElEQVRoge3WwQ0AIBDDMGD/ncsSVCche4I8s5MsAADgtTMdAAAAf7LaAABQYbUBAKDCagMAQMUF9FADB/07X9MAAAAASUVORK5CYII=)
    )



)
