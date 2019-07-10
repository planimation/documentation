Planning Visualisation - User Guide
===================================

<span id="1_Overview_0"></span>1. Overview
==========================================

This document contains the User Guide for Planning Visualiser.

The Planning Visualiser is an open-source program which visualises
solutions to Planning Problems. It is an executable Unity architecture
in a browser.

<span id="11_Planning_Problems_7"></span>1.1 Planning Problems
--------------------------------------------------------------

For information about Planning Problems, see <http://planning.domains/>

Our application uses one ‘Animation Profile’ per problem domain. An
Animation Profile is a user-written PDDL file which tells the Visualiser
how a Domain is to be visualised. See the developer docs for more
information.

<span id="12_Scope_15"></span>1.2 Scope
---------------------------------------

Planning Visualiser currently has Animation Profiles for four problem
domains; Blocks, Grid, Towers of Hanoi, and Logistics. Other simple
problem domains may be added by writing an Animation Profile (see
section 3.2).

Planning visualiser can generate a solution using the solver on
<http://planning.domains/> . Alternatively, the user can provide their
own solution from any solver, provided it conforms to the correct
format.

<span id="2_Using_the_system_23"></span>2. Using the system
===========================================================

<span id="21_Visualise_Builtin_Domains_26"></span>2.1 Visualise Built-in Domains
--------------------------------------------------------------------------------

### <span id="211_Select_Files_28"></span>2.1.1 Select Files

From the home screen, two options are available:

*Build visualisation from Problem*

-   Choose this option to generate a visualisation for a given problem
-   Requires the following files: Domain PDDL, Problem PDDL, Animation
    Profile PPDL. **Files for existing domains are located in the
    bitbucket repository under Test/Sample Files.**
-   A custom URL can be chosen to connect to any solver. The default is
    solver.planning.domains

*Build visualisation from Solution VFG*

-   Choose this option to view the visualisation for an existing
    Visalisation file
-   Reuqires the following file: Visualisation File
-   This allows the user to generate a visualisation file once, and
    watch it multile times or share it with others

Once the correct files are uplodaded, the user will be taken to the
Visualiser screen.

### <span id="212_Visualise_Solution_33"></span>2.1.2 Visualise Solution

The visualisation page has several parts.

1.  **Steps Panel:** Shows all the steps in the solution. Steps can be
    clicked to navigate the animation to that step.
2.  **Step Information Panel:** shows detailed information for each
    step, including actions.
3.  **Animation Panel:** displays the animation. Objects in the domain
    are darkened when they are part of a satisfied subgoal.
4.  **Control Panel:** buttons to control the animation. These include
    changing the speed of the animation, Play/Pause, Step
    Forward/Backwards, Replay
5.  **Subgoal panel:** Shows all subgoals (predicates which comprise the
    goal state). Subgoals change colour when they are satisfied.
    Clicking on the subgoal opens a dropdown list to all of the steps in
    which the subgoal is satisfied.
6.  **Header Bar:** Contains Home button, Help button, and a button to
    download the Visualisation file. This downloaded visualisation file
    can be shared with others or re-watched.

<span id="22_Visualise_a_new_Domain_42"></span>2.2 Visualise a new Domain
-------------------------------------------------------------------------

This can be done, for many simple domains, with no modification to the
system.

To add a new domain:

1.  Write or obtain a Domain PDDL file for the problem domain. Many
    domains can be found at
    <https://bitbucket.org/planning-researchers/classical-domains/src/208a850d2ff2a27068329ad578ad99af9ec7e5c5/classical/?at=master>
2.  Write an Animation Profile which corresponds to the domain file. For
    documentation on the Animation Profile Language, see the file
    ‘Animation Profile Language’
3.  Follow the steps in 2.1 to view a visualisation with the new
    Animation Profile.

<span id="23_Video_Record_a_Visualisation_52"></span>2.3 Video Record a Visualisation
-------------------------------------------------------------------------------------

A video recording of the visualisation can be created so that the final
animation can be easily shared or re-reviewed independently of the
system. The below recommendations are one way of recording the
animation, however many other methods and tools exist to achieve this.

### <span id="231_MacOS_Users_57"></span>2.3.1 MacOS Users

To video record the visualisation, have the animation you wish to record
on your screen, then complete the following steps:

1.  Launch the pre-installed QuickTime Player application
2.  Select “File” and choose “New Screen Recording”
3.  To decide whether mouse clicks and sounds appear in your recording
    or not, click the small, white arrow and select the appropriate
    options from the drop-down menu.
4.  When ready, click the red record button.
5.  You will need to select what you want to record. To record the
    entire screen, click once anywhere. To record only a portion of it,
    click and drag a box and then click “Start Recording.”
6.  When finished, navigate to the menu bar and click the stop recording
    button designated by the square symbol.
7.  To save your recording, click “File” and then"Save", and choose an
    appropriate save location and name for the recording.
8.  View and share file as you would with any other media file.

-   Instructions adapted from
    <https://www.digitaltrends.com/computing/how-to-record-your-computer-screen/>

### <span id="232_Windows_Users_74"></span>2.3.2 Windows Users

To video record the visualisation, have the animation you wish to record
on your screen, then complete the following steps:

1.  Press the Windows key and the letter G at the same time to open the
    Game Bar dialog (this will pop up on your screen).
2.  Check the “Yes, this is a game” checkbox to load the Game Bar. This
    is the procedure regardless of what you are recording.
3.  Click on the Start Recording button, or press Win + Alt + R to start
    screen recording.
4.  Stop the recording by clicking on the red recording button on the
    pop-up.
5.  The video can be accessed via your Videos folder, inside the
    Captures folder.
	
Instructions adapted from
<https://www.laptopmag.com/articles/how-to-video-screen-capture-windows-10>

<span id="3_Extending_the_system_89"></span>3. Extending the system
===================================================================

Planning Visualiser is modular and can be extended in multiple ways.

Many simple domains can be captured in the existing Animation Profile
language. For more complex domains, modifications may need to be made to
the application.

Detailed developer documentation is available at the project's
repository (under /Docs) .


