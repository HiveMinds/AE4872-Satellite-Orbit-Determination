# AE4872-Satellite-Orbit-Determination Content:

1. The complete course planning. (It automatically compiles a pdf with the planning, and more importantly, it automatically generates all the taskwarrior commands to add your tasks to your tasklist (taskwarrior).)
2. Summaries for the course (a bit funky).
3. Old exam solutions templates, the actual solutions are in a private repo shared with collaborators.
test2

# Add yourself as collaborator.
Short: 
0. git- fork, 
1. open xlsm, 

2.a find un-allocated exam (~ see column K)

2.b or add new one that doesnt have solutions in drive etc., 

3. Add yourself by new Letter(~see col G) in *column K*
4. push, 
5. send me pull request.

Exact steps:
0. Browse to my github
![1](./HowToUseTexMaker/addYourself/1.jpeg)
1. Open the repo of the course (you're already here if you're reading this)
![1](./HowToUseTexMaker/addYourself/2.jpeg)
2. Copy the link to clone the repo
![1](./HowToUseTexMaker/addYourself/3.jpeg)
3.Ensure you installed github and that it works, then open the software.(Go to: desktop.github.com) 
![1](./HowToUseTexMaker/addYourself/4.jpeg)
4. click add>CLONE repository.
![1](./HowToUseTexMaker/addYourself/8.jpeg)
5. Copy the git clone link you copied in step 2. and paste it in, then click add repository (If you get "ssh error" please click the refresh button in the github gui software again, untill the github gui software/program shows your fork of the course repository, then click that repository and clone.)
6. Probably takes you to the next screen, tab url, (else enter the copied git clone link again) and press clone.
![1](./HowToUseTexMaker/addYourself/7.jpeg)
8. Then open the cloned repository on your pc, 
![1](./HowToUseTexMaker/addYourself/9.jpeg)
9.and browse to CoursePlanningTemplate
![1](./HowToUseTexMaker/addYourself/10.jpeg)
10. Open `PlanningData-<Coursename>.xlsm`
![1](./HowToUseTexMaker/addYourself/11.jpeg)
11.Find an exam
![1](./HowToUseTexMaker/addYourself/12.jpeg)
12.Find your new ID /letter by going one letter beyond the current maximum ID as listed in cell M1, e.g. if the repo contains allocations in colum K of: A-G, your new ID = H.
![1](./HowToUseTexMaker/addYourself/13.png)
13.Allocate yourself to an exam by typing your ID into column K.
![1](./HowToUseTexMaker/addYourself/14.jpeg)
14. git pull/ git fetch before you push, forgot screenshot.
![1](./HowToUseTexMaker/addYourself/15.png)
15. Then after saving your xlsm and closing it, pres git push
![1](./HowToUseTexMaker/addYourself/16.jpeg)
16.  Then in your ownforked/copied  repository/github of this course click"new pull request"
![1](./HowToUseTexMaker/addYourself/17.jpeg)

17.Create pull request (sends me message hey A-T-0 do you want this change I made?
![1](./HowToUseTexMaker/addYourself/18.jpeg)
18.Type a bit more than just your id.
![1](./HowToUseTexMaker/addYourself/19.jpeg)
19.Thats it, then I'll get a notification of your pull request, inspect it.
![1](./HowToUseTexMaker/addYourself/20me.jpeg)
20.And then merge your pull request to my/the main repo.

![1](./HowToUseTexMaker/addYourself/21me.jpeg)
Thats it, now make an exam solution in the latex template, and send me a pull request again, (like just described, to gain access :))
22.


# How to use
0. You can git clone this repository
1. You can edit and compile the pdf's in this repository with TexMaker (OpenSource):https://www.xm1math.net/texmaker/download.html
2. And then send a pull request after you have pushed your changes. After inspection of your pull request (and acceptance), you will be made collaborator in the private repo, to re-do your pull request which will be accepted. This will grant you access to all the exam solutions generated collectively! 

To change (a copy of) this a latex exam solution template after you have installed TexMaker:
  0. Open Main.tex file in TexMaker:
  
  ![1](./HowToUseTexMaker/1.png)
  
  ![1](./HowToUseTexMaker/2.png)
  
  1. Make sure you have opened `Main.tex` and not `someChapterOrOther.tex` and click the triangle meaning "Run/compile". That exports the PDF to your/this directory.
  
  
  2. Click `Options>Define current document as "Master Document"`.
  ![1](./HowToUseTexMaker/master_document.png)
  
  3. Selected `PDFLatex` and `View PDF` (see next pic)
  
  3.a Press `f2`,`f11` to compile the bibliography, followed by `f2` to include the bibliography in the report. Then:
  
  4. Press `f6` to compile the pdf. (left triangle in pic below)
  
  ![1](./HowToUseTexMaker/3.png)
  
  5. Press `f7` to preview the pdf in the right half of your screen. (Right triangle in pic below)
  
  ![1](./HowToUseTexMaker/4.png)
  
## Configuring Texmaker for convenience ##
Normally you can switch between your tabs/files with `Alt+PageDown` and `Alt+PageUp`. However if you also have FLux installed on windows, those shortcuts are already mapped to reducing the blue content in your screen. The shortcuts wont work in that case. To switch between screens fast with your keyboard:

  7. Click Options.
  
  8. Click Configure Texmaker.
  
  ![1](./HowToUseTexMaker/5.png)

  9. Click tab: "Shortcuts" and scroll down to Action: "Next Documents".
  
  10. Click the "shortcut" next to `Next Document` and Press the shortcut you want, e.g. press `Ctrl+PageDown`.
  
  ![1](./HowToUseTexMaker/6.png)
  
  11. Then do the same for the `Previous Document`



If you are having troubles with any of the above steps/don't know how you do any of that, feel free to click on: "issue" and type your question :)
