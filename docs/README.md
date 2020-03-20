# 1. Overview 

This document contains an overview of Planimation.

The Planimation is an open-source program which visualises solutions to Planning Problems. It is an executable Unity architecture in a browser.

## Here is shot video about Planimation
[![Youtube](images/readme/youtube.png)](https://youtu.be/Cj2rWdt1YQU)


For developer documentation, see
* [Animation Profile Guide](https://planimation.github.io/documentation/ap_guide/)
	* Contains a guide to Animation Profiles and the Animation Profile Language
* [VFG Guide](https://planimation.github.io/documentation/VFG_guide/)
	* Contains a guide to the Visualisation File Generator Component
* [Visualiser Guide](https://planimation.github.io/documentation/Visualiser_guide/)
	* Contains a guide to the VisualiserComponent 
	

## 1.1 Planning Problems

For information about Planning Problems, see http://planning.domains/


Our application uses one 'Animation Profile' per problem domain. An Animation Profile is a user-written PDDL file which tells the Visualiser how a Domain is to be visualised. See section 3.2 for more information on Animation Profiles.


## 1.2 Scope
Planning Visualiser currently has Animation Profiles for four problem domains; Blocks, Grid, Towers of Hanoi, and Logistics. Other simple problem domains may be added by writing an Animation Profile (see section 3.2).


Planning visualiser can generate a solution using the solver on http://planning.domains/ . Alternatively, the user can provide their own solution from any solver, provided it conforms to the correct format.



# 2. Getting Started

1. Try planimation at http://editor.planning.domains. Install planimation from the plugin menu.
2. or Visit our stand alone application at http://planimation.planning.domains
