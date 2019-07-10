# 1. Overview 

This document contains an overview of Planning Visualiser.

The Planning Visualiser is an open-source program which visualises solutions to Planning Problems. It is an executable Unity architecture in a browser.

Click the `Help` link from inside the visualiser. Alternatively, view the html for the user manual at `server/UserManual.html`.


For developer documentation, see
* `/Docs/Animation Profile Guide.md`
	* Contains a guide to Animation Profiles and the Animation Profile Language
* `/VFG Guide.md`
	* Contains a guide to the Visualisation File Generator Component
* `/Docs/Visualiser Guide.md`
	* Contains a guide to the VisualiserComponent 


## 1.1 Planning Problems

For information about Planning Problems, see http://planning.domains/


Our application uses one 'Animation Profile' per problem domain. An Animation Profile is a user-written PDDL file which tells the Visualiser how a Domain is to be visualised. See section 3.2 for more information on Animation Profiles.


## 1.2 Scope
Planning Visualiser currently has Animation Profiles for four problem domains; Blocks, Grid, Towers of Hanoi, and Logistics. Other simple problem domains may be added by writing an Animation Profile (see section 3.2).


Planning visualiser can generate a solution using the solver on http://planning.domains/ . Alternatively, the user can provide their own solution from any solver, provided it conforms to the correct format.



# 2. Getting Started


## 2.1 In-browser (recommended)

1. Visit http://planimation.planning.domains


## 2.2 Local server (For Development)

### 2.2.1 Install dependencies
1. **Unity** - Install the Version 2018.2.1f1  from https://unity3d.com/. When installing, select "Include WebGL"
2. **Django REST** - Follow the tutorial at http://www.django-rest-framework.org/tutorial/quickstart/

### 2.2.2 Install project
1. Clone the project from https://github.com/Planning-Visualisation/planning-visualisation


### 2.2.3 Run
1. Run the server with the command 'python manage.py runserver' in the directory of the file manage.py (/swen90013-2018-pl/server)
2. Open the project in Unity.The Unity application will communicate with the local server


## 2.3 Deployment (For Development)

1. Follow the steps to setup the local server in 2.2
2. Build the project from the File menu in Unity
3. Be sure to include all scenes in the build


# 3. Using the system


Click the `Help` link from inside the visualiser. Alternatively, view the html for the user manual at `server/UserManual.html`.


# 4. Extending the system


Planning Visualiser is modular and can be extended in multiple ways.

Many simple domains can be captured in the existing Animation Profile language. For more complex domains, modifications may need to be made to the application. These are detailed in 4.3. and 4.4


## 4.2 Architecture overview

### Simple Overview


![Overview](https://raw.githubusercontent.com/Planning-Visualisation/planning-visualisation/master/Docs/images/readme/architecture%20overview.png)




### Detailed Overview



![Overview](https://raw.githubusercontent.com/Planning-Visualisation/planning-visualisation/master/Docs/images/vfg/vfg_overview.png)

## 4.3 Extending the Visualisation File Generator
The Visualisation File Generator (VFG) decides where objects are on the screen and what they look like, based on the three files listed above.

Most domain-related modifications to the system should be made to the VFG. For example, a new domain might require objects to be laid out in a manner which is not captured in the existing Animation Profile language.

Extending the Visualisation File Generator requires only building the project in Django (see section 2.2). 


Modifications or extensions of the VFG need only be carried out only on the Django server (not Unity). For information on the VFG, see the file 'VFG Documentation'.


## 4.4 Extending the Visualiser
Modifying the visualiser is only required when the current visualiser cannot adequately render the domain on-screen. It does not concern the logic of object layout. For example, a user might want to extend the Visualiser to support animated sprites.


Extending the Visualiser requires building the project in Unity and Django (see section 2.2). Modifications or extensions of the Visualiser need only be carried out on Unity (not Django). For information on the Visualiser, see the file 'Visualiser Documentation'.