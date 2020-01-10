# Interactive Projection Mapping with Processing!

In this workshop, participants will learn how to transform a Processing sketch into an interactive projection installation. We’ll use Syphon to stream the output of a Processing sketch into projection mapping tools, learn how to map our projected sketch onto a unique surface, and make our projection installation interactive by integrating a basic sensor.

Iterations of this workshop have been presented at The School of [Afrotectopia](https://www.afrotectopia.org/) (2020) and [Processing Community Day NYC(2019)](http://processing.nyc/).

### Basic Materials & Download Links

- Projector
- Laptop
- [MadMapper](https://madmapper.com/madmapper/) (see alternatives below). [Download the free trial version here](https://madmapper.com/try-buy/try-madmapper/).
- [Processing](https://processing.org/download/).

For participants hoping to projection map content from browser-based p5 sketches, try [ScreenCaptureSyphon](http://techlife.sg/ScreenCaptureSyphon/). Windows users, try OBS w/ Spout Camera.

### Software Examples

During this demo, we will use [`SimpleCircleExample`](https://github.com/bomanimc/Interactive-Projection-Mapping-Examples/blob/master/SimpleCircleExample/SimpleCircleExample.pde) and [`SimpleCircleExampleWithSyphon`](https://github.com/bomanimc/Interactive-Projection-Mapping-Examples/blob/master/SimpleCircleExampleWithSyphon/SimpleCircleExampleWithSyphon.pde). To download and run these these Processing sketches on your own computer, please complete the following steps:

1. Near the top of this page, find the green button that says "Clone or Download"
2. Download this repository using the "Download ZIP" or by cloning the repository using `git clone <repository .git link>` from your terminal (if you're not familiar the terminal or command-line interfaces, please use the "Download ZIP" option).
3. Unzip the repository. You may put the resulting folder on your Desktop or in another easily accessible location.
4. Open Processing and use File > Open and open one of the the .pde files within the subdirectories of the repository folder (for example, SimpleCircleExample > SimpleCircleExample.pde). Once you select the file, a new Processing window should open that displays the code in the folder.
5. If you are using a Syphon example (e.g. SimpleCircleExampleWithSyphon), you'll need to install the Syphon library in order to run the Processing sketch. While Processing is in focus, select Sketch > Import Library > Add Library. A new window title "Contribution Manager" should pop up. Search "Syphon" in the top bar and install (using the Install button in the bottom right corner) the library authored by Andress Colubri, Tom Butterworth, et al. Once the installation is done, you can close this window.
6. Return to the main Processing window where the code is diplayed. In the top left corner of the page, click the triangular play button to run your sketch. You should see a new window open up that contains the visual output of your code.

This repository also includes some example sketches using the [Leap Motion Controller](https://www.ultraleap.com/product/leap-motion-controller/) for you to check out if you're ever interested. Please ensure that you install all of the necessary libraries before running those files (see the import lines at the top of the file).

### Annotated Talk Slides

- [The School of Afrotectopia (2020)](https://docs.google.com/presentation/d/1huLuMwr7kGXJifFZAMnxy4fk89dAXh7JsjT6YsKFPHE/edit?usp=sharing)
- [Processing Community Day NYC (2019)](https://docs.google.com/presentation/d/1GfVKDLk5o_yNBy4mst4nDapCcCRiyqyqsiHV5sRelnk/edit?usp=sharing)

### For Windows Users

[Syphon](http://syphon.v002.info/), the technology that allows us to stream Processing outputs into our projection mapping software, is only available for Mac. For Windows computers, you can use [Spout](http://spout.zeal.co/) to achieve the same results. Similar to Syphon, it also has a [Processing library](https://github.com/leadedge/SpoutProcessing).

### Projection Mapping Software Options

During the workshop, I will use [MadMapper](https://madmapper.com/madmapper/) to provide some insight into the state-of-the-art application, but there are alternatives (including free ones). I haven't tested these options yet, but I plan to record a YouTube video reviewing some of these alternatives in the future.

Here's a growing list of open-source alternatives you might want to explore:

- [MapMap](https://mapmapteam.github.io/)
- [VPT 8](https://hcgilje.wordpress.com/vpt/)
- [Keystone](https://fh-potsdam.github.io/doing-projection-mapping/processing-keystone/)
- [Splash](https://github.com/paperManu/splash)

While not free, a few others you might want to look into are:

- [TouchDesigner](https://www.derivative.ca)
- [HeavyM](https://heavym.net/en/)
- [Resolume](https://resolume.com/)

### Additional Resources

- Rendering in Processing: https://processing.org/tutorials/rendering/
- PGraphics: https://funprogramming.org/143-Using-PGraphics-as-layers-in-Processing.html
- MadMapper Tutorials: https://madmapper.com/tutorials/
- Projection Mapping Central: http://projection-mapping.org/
