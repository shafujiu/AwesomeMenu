### DO NOT USE IT TO COPY PATH!

---

AwesomeMenu is a menu with the same look as the story menu of [Path](https://path.com/).

---

**How To**:


Create the menu by setting up the menu items:
```Objective-c
UIImage *storyMenuItemImage = [UIImage imageNamed:@"bg-menuitem.png"];
UIImage *storyMenuItemImagePressed = [UIImage imageNamed:@"bg-menuitem-highlighted.png"];
UIImage *starImage = [UIImage imageNamed:@"icon-star.png"];
AwesomeMenuItem *starMenuItem1 = [[AwesomeMenuItem alloc] initWithImage:storyMenuItemImage
						       highlightedImage:storyMenuItemImagePressed
							   ContentImage:starImage
						highlightedContentImage:nil];
AwesomeMenuItem *starMenuItem2 = [[AwesomeMenuItem alloc] initWithImage:storyMenuItemImage
						       highlightedImage:storyMenuItemImagePressed
							   ContentImage:starImage
						highlightedContentImage:nil];
// the start item, similar to "add" button of Path
AwesomeMenuItem *startItem = [[AwesomeMenuItem alloc] initWithImage:[UIImage imageNamed:@"bg-addbutton.png"]
					       highlightedImage:[UIImage imageNamed:@"bg-addbutton-highlighted.png"]
						   ContentImage:[UIImage imageNamed:@"icon-plus.png"]
					highlightedContentImage:[UIImage imageNamed:@"icon-plus-highlighted.png"]];
```
Then, setup the menu and options:
```Objective-c
AwesomeMenu *menu = [[AwesomeMenu alloc] initWithFrame:self.window.bounds startItem:startItem optionMenus:[NSArray arrayWithObjects:starMenuItem1, starMenuItem2]];
	menu.delegate = self;
[self.window addSubview:menu];
```
You can also use menu options:

to locate the center of "Add" button:

	menu.startPoint = CGPointMake(160.0, 240.0);

to set the rotate angle: 

	menu.rotateAngle = 0.0;
> 因为指定的item的起点或者终点位置都无法调整item，所以可以通过该属性旋转整个items的布局
to set the whole menu angle:

	menu.menuWholeAngle = M_PI * 2;

to set the delay of every menu flying out animation:

	menu.timeOffset = 0.036f;

to adjust the bounce animation:

	menu.farRadius = 140.0f;
	menu.nearRadius = 110.0f;

to set the distance between the "Add" button and Menu Items:

	menu.endRadius = 120.0f;

---
