(define (animation hiking)
	
	(:predicate next
	:parameters (?x1 ?x2)
	:effect(
		(equal (?x2 x) (add (?x1 x) 72) )
	)
	)

	(:predicate partners
	:parameters (?x1 ?x2 ?x3)
	:effect(
		(equal (?x2 x) (add (?x2 x) -16))
		(equal (?x3 x) (add (?x3 x) 16))
		
	)
	)


	(:predicate at_person
	:parameters (?x1 ?x2)
	:effect(
		(equal (?x1 y) (add (?x2 y) -16))
		(equal (?x1 x) (add (?x2 x) 8))
		(assign (?x1 x) (function align_middle (objects ?x1 ?x2)))
	)
	)

	(:predicate at_car
	:parameters (?x1 ?x2)
	:effect(
		(assign (?x1 x) (function distribute_within_objects_horizontal (objects ?x1 ?x2) (settings (padding 0))))

	)
	)

	(:predicate at_tent
	:parameters (?x1 ?x2)
	:effect(
        (assign (?x1 x y) (function distribute_next_objects (objects ?x1 ?x2)))
        (assign (?x1 x) (function align_middle (objects ?x1 ?x2)))
	)
	)

	(:predicate up
	:parameters (?x1)
	:effect(
		(equal (?x1 width) 48)
		(equal (?x1 height) 48)
		(equal (?x1 x)(add (?x1 x) -12))
		(equal (?x1 y)(add (?x1 y) -12))
	)
	)

	(:predicate down
	:parameters (?x1)
	:effect(
		(equal (?x1 width) 24)
		(equal (?x1 height) 24)

	)
	)

	(:visual place
	:type default
	:properties (
			(prefabImage place)
			(color RANDOMCOLOR)
			(x 0)
			(y 10)
			(width 64)
			(height 64)
			(depth 1)
		)
	)

	(:visual guy
	:objects (%guy)
	:type predefine
	:properties (
			(prefabImage person)
			(color BLUE)
			(x Null)
			(y Null)
			(width 16)
			(height 16)
			(depth 2)
		)
	)

	(:visual girl
	:objects (%girl)
	:type predefine
	:properties (
			(prefabImage person)
			(color RED)
			(x Null)
			(y Null)
			(width 16)
			(height 16)
			(depth 2)
		)
	)

	(:visual car
	:objects (%car)
	:type predefine
	:properties (
			(prefabImage car)
			(color RANDOMCOLOR)
			(x Null)
			(y Null)
			(width 32)
			(height 32)
			(depth 2)
		)
	)

	(:visual tent
	:objects (%tent)
	:type predefine
	:properties (
			(prefabImage tent)
			(color GREEN)
			(x Null)
			(y Null)
			(width 24)
			(height 24)
			(depth 2)
		)
	)



	(:image 
	(person iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAAXNSR0IArs4c6QAAA/dJREFUeF7tm4tx1DAQhqVKIJVAKoFUQlIJUAlJJYRKlvtvpIxj9qnXebjzzI1zOcvWftqnJOd05Ue+cvnTDcBNA66cwDITIKKPhTXO+HzYfH9NKf1JKeGccs7Pq8ZlKoAi9JeU0ufyicgFGD9SSi8zgQwHsBH6MSKtce0ZRs75aeA9z7caCoCIvp1uOlLwvbzDQQwBQERQ8e/FtkcPEne/YSC6ASwYdQ3oY69ZdAEgol8Nzm20hjznnO9bb9oEoDg6qDxU/wgHTOI+53wOo5EjDKAI/zvykEXXNkFoAXAEtZeYvuac7yLAQwAabR5Z3UpTCfkENwAigs1/jdAt11YHBc1ZdbijgwtAifMtAiB7e4DURAR4gLjqeMg5I5VWDy8AOL1azFj33P5+t/XMi3MGlz8wAXSM3Nvob4kshmBqgQdAy+iL9CcVS81RQQXQMVpIStSavoCAX2kxrYgZsppYb2ABaBl9U/j68EXaoPoCEUBjxucOPzu/MDtCiIOiAYh2qkn4nTYgYfrUmG9oZiH2TQMQSXlNbxsx2qJ9gFGn0yLNuWvF7FADQI6nogCB8FMnMYUJ1eo8awX4Nql60qJ/krbTvAErK/tPZ+YHoSF8uAR1gG2+RPFdrB+QAGj2v2TUWwnMBjDU1luFtNoJVSvbd0kDuNldNaGwOrXydwEAGwkkAFzpGwKwSXLgrH5GHWVPe6F0DwHgNMA90SAUUO48YUB79wBGTCACgAuhbud5qkF623M5TEgDuCjgqq+N8tmsE3rbl8kXroYJOUFkYftkwguAa1t94LsJEs4xGjmI2b4A4DSoGwDubY5g6QCnghET6m3PAWDhST4Anpub+3flAbsyN7yO19NeMSE/gBGjuDLu70prdwRAO60Y4kKhyw9cSvio/VsAuszgEhCi6q8CUMzgsFpAROwUnlQKewBIVWEoLV6hDcoErpqBWpOiMANu5rZpJXYWCG3+Uht9UwOKGUhacBhTUBZtzbDtWRiBFkibIS5uCorwrgEyARhagJ/dVd5oEzAWblxZqwtAgSBtgQtneiNAGMK7NTMCQDOFpZpg7FVw1xwuJ7hLM6WoUC+bGh0cm7Ncdr+Vya0BtZFjyWyKSTgWat0TLl0Aij+wNAGXdYMILJ42CR82AcYc4BitfUPoHBZRXnC2FlIadpiHbH7vgMMmwEDA+l1kg3RdScK5/l3fIYjuFXB7eynydAHY+AVoAbQhKkBrRAS4J88mKOsBQwBs/AK0ATBmgej2K0NNgKO7seGRIIYLXvs+TAMMGD2vzGBVadoK9FQAjMPcvjiFl6bwfSscIsX/89KU5YCO8PsyDTiCsFwfbgCOOjKr+nX1GvAXf1gtX7ls51sAAAAASUVORK5CYII=)

	(tent iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAjtJREFUaEPtmNFxwzAIhmGTZpNmkjaTNJ2k2aTZJOkkNPggh1UplgQ513fymyXb4oMfkIWw8Qs3bj8MgLUjOCIwIuD0wJCQ04Hu10MjQETvbBEinnKWEdEHAPyU5ntoogFIjDgi4qc1SIw/ytgOEa89BqfvRAN8A8ArALBxB0Q884JExGM8x9cZEfcRxk/RjvqQGPoCABf55hURdzLOYzx3H4taNxRAjOU8+BIDORfYcI4AX3uNyr8FEAhOVtW72vonLyIgwiNgpMRRUM+H6t6CPwVAIDSh+faEiIcIjz+1CunHk6qjw+H6D69CBkCrjnVYeAV6CkDSsKa6b3IhXEqhOVCQDmtfy+qswUXkRDSATVy1j5uZNjceC5VSGIBs5NTTd+fe9kRIRClYWE8IASAiu4WYKUMA7F5oioJ0ZfeGLgogJ50JRAAY0Da2sN7gBigk7kxCD7YX7t4QAZCr+TmAnMzcCe0CICKWxfQXVrpYQqbB5aTm6g3dAEvSUaMTALvV1kdcvcEDUEzc2W5xHoFSteqWUhdAqebnZGQjIMlcAu/qDc0Aj2p+JUDaE6yUuCo19YYegCrp5HJAIlBsej0//E0AtYlbygFTjXKNTaf5NCN7rpSNcMuOkIge1vwaCSUQb7f79N+5KaGrI1BT81sAFkCqe8MiQEvFaYlmxbOczAwyO+FL36sB0OPCijXDH1mUUw2AHgmGW1fzwaVjyEWAmkXWfGYArOl9XntEYETA6YEhIacD3a9vPgK/XhbqMblpe5MAAAAASUVORK5CYII=)

	(car iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAftJREFUWEftVlFOwkAQnakcAPECkFgTTyGcRPwsHgI4hPAJnoR6ChMwoR7Ayr+yo7tly+622y4thpjQ392Zeftm3psinPjDE9eHM4CDGGhOX9uuLdsEt5HL3VIArelqCER9AHQuLgsj0cPW24ZFYAoBJMVh5PIS6x2EURz4Y9t5MYDJinggf0kVEIQw5Mwx/O7YWLAC4P32qLH+1UnhC4qASQb5Az4eb+Z5d60AZDBD6G0CP6zCQHO66noEC0Ccx8F1Lot2AIJ+iuLBTadKcRnTmizXRW1IAVw9LfvkeXdJIEVi+GrQnwKYvs24igggREQhTWTsRbYkBSCR6q+liOG256rpPKYuJ6sFAnTNs3jgi9oaAwzx3rycIIcQGb0f2gpbPo/oOcMAT34U3ZehNNqqDWFr16+yHHXOOaOfA7+XuqWazNavOgWzsbqydAZ2klGDxAzkDJFQSubT90USS21zj8gB1IZQzMDOeqUUpQISQ6FZksjuDWoLVQMzFaZac8pAar375mgWLJObPVRJ2APQQZqz5QTALLRnh3sDZmz1glFbLh8OSi1SCYDwQ4CQa1ZN7DqQ0j+IoGvOkBMDroWq3PtHAI6wjMSSQ5ypTLkz8EcArD6QOCE3Dr6mvJDB17jOJuRpuLyRGjM1r/pzUvpXXGXIDok5Azgz8APkPkQw5e9KLQAAAABJRU5ErkJggg==)
        	
	(place iVBORw0KGgoAAAANSUhEUgAAACoAAAAgCAYAAABkWOo9AAAAAXNSR0IArs4c6QAAAcRJREFUWEfNmNtxAjEMRa2a0kAohjoSmqAdSGXKyoN3tLJsPRZPsl8M68fhSrqygbL4QcTPUspXKeUHAL6z20F2onceIhIcgdLzBICLdy4ftxRUQLZ9LwDwjMKuBkUFKKXqMtCBmo37Fs3XlaBczduLsOVqgY00Ev7QYO/CUs0GhdsLtkYoBVaBHtRsYVbSwV1YblDyQ0+1jtRsSiLiY7Mp8taQXblA2eJmEYjwduNfDYBgQ3ZlgkbCZal5RlUPqPRCtQiUHzRUP6PqFHTihV0ReNUcqGralQWqdZauCCJqMlAqKJ6r0/wfgmq5KRbeVbUKaOS/kfyfgXZeqFlLRk0O7m0CKuiks8hw0ZHNHT5NWW9hdaCWQkLVw97R/h2xKwu0syJFgfSJaFJYnascQC012cL81F6/zqrpVVWCqoeJQW65x3pOXVau7qAJw26qho5rM2iZ/zxKHPStCnlUlGMUVfcmUEGjamYgvHNGLA30z9W0mgD8JzUnrvIhQc2DsTeEZ8eJwqqgPOzuO8xZEGu+KKw7gfI7DF1rw/9iWJsm39PVut2trl2OJhddPe2q2tPqXYPr17oZdqbgYu8e3tKPIOvnX+JJTOIqDGzIAAAAAElFTkSuQmCC)

	(line iVBORw0KGgoAAAANSUhEUgAAA84AAAAFCAIAAAAbsCLlAAAACXBIWXMAAAsTAAALEwEAmpwYAAAGwGlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS42LWMxNDAgNzkuMTYwNDUxLCAyMDE3LzA1LzA2LTAxOjA4OjIxICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtbG5zOnN0RXZ0PSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VFdmVudCMiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxuczpwaG90b3Nob3A9Imh0dHA6Ly9ucy5hZG9iZS5jb20vcGhvdG9zaG9wLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDpBQTA1RUE1QjMzMjA2ODExODIyQUM4NjE0MERCRDI1NiIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpFNUU1MTE2OEZBQTExMUUzODBFQ0E4Mjg2RkNEODNGOSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo2MGJhZmVjNy1iMDY3LTRlYWMtYTdhYS0yOWQyNGFkYmEyZTYiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKSIgeG1wOkNyZWF0ZURhdGU9IjIwMTgtMDgtMTJUMTI6MjA6MzMrMTA6MDAiIHhtcDpNb2RpZnlEYXRlPSIyMDE4LTA4LTE1VDIwOjM2OjQyKzEwOjAwIiB4bXA6TWV0YWRhdGFEYXRlPSIyMDE4LTA4LTE1VDIwOjM2OjQyKzEwOjAwIiBkYzpmb3JtYXQ9ImltYWdlL3BuZyIgcGhvdG9zaG9wOkNvbG9yTW9kZT0iMyIgcGhvdG9zaG9wOklDQ1Byb2ZpbGU9InNSR0IgSUVDNjE5NjYtMi4xIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6RkI3RjExNzQwNzIwNjgxMTgzRDE5QTYzMUY5NDkyQUEiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QUEwNUVBNUIzMzIwNjgxMTgyMkFDODYxNDBEQkQyNTYiLz4gPHhtcE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6YjhhMTA1MjQtNGViMS00NGEwLWI4ZDgtNGQwNWY2Y2U2NjdhIiBzdEV2dDp3aGVuPSIyMDE4LTA4LTEyVDEyOjIxOjU0KzEwOjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOCAoTWFjaW50b3NoKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6NjBiYWZlYzctYjA2Ny00ZWFjLWE3YWEtMjlkMjRhZGJhMmU2IiBzdEV2dDp3aGVuPSIyMDE4LTA4LTE1VDIwOjM2OjQyKzEwOjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOCAoTWFjaW50b3NoKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8L3JkZjpTZXE+IDwveG1wTU06SGlzdG9yeT4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5XefbLAAAAOElEQVRoge3WwQ0AIBDDMGD/ncsSVCche4I8s5MsAADgtTMdAAAAf7LaAABQYbUBAKDCagMAQMUF9FADB/07X9MAAAAASUVORK5CYII=)

 	
   

	)
 
)
