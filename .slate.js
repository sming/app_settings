// Configs
S.cfga({
  "defaultToCurrentScreen" : true,
  "secondsBetweenRepeat" : 0.1,
  "checkDefaultsOnLoad" : true,
  "focusCheckWidthMax" : 3000,
});

// Monitors
var monTbolt  = "5120x2880";
var monLaptop = "2880x1800";

var denominator = 6.0;
var smallChunk =  1.0 / denominator;
var mainChunk = (denominator - 1.0) / (denominator * 1.0);

// Operations
var lapFull = S.op("move", {
  "screen" : monLaptop,
  "x" : "screenOriginX",
  "y" : "screenOriginY",
  "width" : "screenSizeX",
  "height" : "screenSizeY"
});

var lapRight = S.op("corner", {
  "screen" : monLaptop,
  "direction" : "top-right",
  "width" : "screenSizeX / 2",
  "height" : "screenSizeY"
});

var lapLeft = S.op("corner", {
  "screen" : monLaptop,
  "direction" : "top-left",
  "width" : "screenSizeX / 2",
  "height" : "screenSizeY"
});

var lapChat = S.op("corner", {
  "screen" : monLaptop,
  "direction" : "top-right",
  "width" : "screenSizeX * " + smallChunk,
  "height" : "screenSizeY"
});

var lapPersonalChrome = lapChat.dup({
  "direction" : "bottom-left",
  "height": "screenSizeY * 8 / 9",
  "width" : "screenSizeX * " + mainChunk,
});

var lapWorkChrome = lapChat.dup({
  "direction" : "bottom-right",
  "height": "screenSizeY * 9 / 10",
  "width" : "screenSizeX * " + mainChunk,
});

var lapMedium = S.op("move", {
  "screen" : monLaptop,
  "x" : "screenOriginX + 25",
  "y" : "screenOriginY + 50",
  "width" : "screenSizeX - 100",
  "height" : "screenSizeY - 75"
});

var lapCenter = S.op("move", {
  "screen" : monLaptop,
  "x" : "screenOriginX + (screenSizeX / 4)",
  "y" : "screenOriginY + 30",
  "width" : "screenSizeX * 3 / 5",
  "height" : "screenSizeY * 4 / 5"
});

// var lapPersonalChrome = S.op("move", {
//   "screen" : monLaptop,
//   "x" : "screenOriginX + (screenSizeX / 4)",
//   "y" : "screenOriginY + 30",
//   "width" : "screenSizeX * 3 / 5",
//   "height" : "screenSizeY * 4 / 5"
// });


var tboltFull = S.op("move", {
  "screen" : monTbolt,
  "x" : "screenOriginX",
  "y" : "screenOriginY",
  "width" : "screenSizeX",
  "height" : "screenSizeY"
});
var tboltBig = S.op("move", {
  "screen" : monTbolt,
  "x" : "screenOriginX+screenSizeX/3",
  "y" : "screenOriginY",
  "width" : "screenSizeX*2/3",
  "height" : "screenSizeY",
});
var tboltLeft = tboltFull.dup({ "width" : "screenSizeX/3" });
var tboltMid = tboltLeft.dup({ "x" : "screenOriginX+screenSizeX/3" });
var tboltRight = tboltLeft.dup({ "x" : "screenOriginX+(screenSizeX*2/3)" });
var tboltLeftTop = tboltLeft.dup({ "height" : "screenSizeY/2" });
var tboltLeftBot = tboltLeftTop.dup({ "y" : "screenOriginY+screenSizeY/2" });
var tboltMidTop = tboltMid.dup({ "height" : "screenSizeY/2" });
var tboltMidBot = tboltMidTop.dup({ "y" : "screenOriginY+screenSizeY/2" });
var tboltRightTop = tboltRight.dup({ "height" : "screenSizeY/2" });
var tboltRightBot = tboltRightTop.dup({ "y" : "screenOriginY+screenSizeY/2" });

// common layout hashes
var lapPersonalChromeHash = {
  "operations" : [lapPersonalChrome],
  "ignore-fail" : true,
  "repeat" : true
};
var lapFullHash = {
  "operations" : [lapFull],
  "ignore-fail" : true,
  "repeat" : true
};
var adiumHash = {
  "operations" : [lapChat, lapPersonalChrome],
  "ignore-fail" : true,
  "title-order" : ["Contacts"],
  "repeat-last" : true
};
var mvimHash = {
  "operations" : [tboltMid, tboltRightTop],
  "repeat" : true
};
var tboltBigHash = {
  "operations" : [tboltBig],
  "sort-title" : true,
  "repeat" : true
};
var tboltFullHash = {
  "operations" : [tboltFull],
  "sort-title" : true,
  "repeat" : true
};
var genBrowserHash = function(regex) {
  return {
    "operations" : [function(windowObject) {
      var title = windowObject.title();
      if (title !== undefined && title.match(regex)) {
        windowObject.doOperation(tboltLeftBot);
      } else {
        windowObject.doOperation(lapFull);
      }
    }],
    "ignore-fail" : true,
    "repeat" : true
  };
}

// 2 monitor layout
var twoMonitorLayout = S.lay("twoMonitor", {
  "Adium" : {
    "operations" : [lapChat, lapPersonalChrome],
    "ignore-fail" : true,
    "title-order" : ["Contacts"],
    "repeat-last" : true
  },
  "MacVim" : mvimHash,
  "iTerm" : tboltFullHash,
  "Xcode" : tboltBigHash,
  "Google Chrome" : genBrowserHash(/^Developer\sTools\s-\s.+$/),
  "GitX" : {
    "operations" : [lapFull],
    "repeat" : true
  },
  "Firefox" : genBrowserHash(/^Firebug\s-\s.+$/),
  "Safari" : lapFullHash,
  "Spotify" : {
    "operations" : [lapFull],
    "repeat" : true
  },
  "TextEdit" : {
    "operations" : [lapFull],
    "repeat" : true
  }
});

// 1 monitor layout
var oneMonitorLayout = S.lay("oneMonitor", {
  "Adium" : adiumHash,
  "MacVim" : lapFullHash,
  "iTerm" : lapFullHash,
  "Google Chrome" : lapFullHash,
  "Xcode" : lapFullHash,
  "Flex Builder" : lapFullHash,
  "GitX" : lapFullHash,
  "Ooyala Player Debug Console" : lapFullHash,
  "Firefox" : lapFullHash,
  "Safari" : lapFullHash,
  "Eclipse" : lapFullHash,
  "Spotify" : lapFullHash
});

// Defaults
S.def(2, twoMonitorLayout);
S.def(1, oneMonitorLayout);

// Layout Operations
var twoMonitor = S.op("layout", { "name" : twoMonitorLayout });
var oneMonitor = S.op("layout", { "name" : oneMonitorLayout });
var universalLayout = function() {
  // Should probably make sure the resolutions match but w/e
  S.log("SCREEN COUNT: "+S.screenCount());
  if (S.screenCount() === 2) {
    twoMonitor.run();
  } else if (S.screenCount() === 1) {
    oneMonitor.run();
  }
};

// Batch bind everything. Less typing.
S.bnda({
  // PSK Bindings
  // cmd,option,shift,control
  // "up:ctrl;cmd;alt" : lapFull,
  "left:ctrl;cmd;shift" : lapPersonalChrome,
  "right:ctrl;cmd;shift" : lapWorkChrome,
  "down:ctrl;cmd;alt" : lapMedium,
   // "c:ctrl;cmd;alt" : lapCenter,
});

S.log("[SLATE] -------------- Finished Loading Config --------------");
