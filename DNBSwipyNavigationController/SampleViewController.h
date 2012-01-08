//
//  SampleViewController.h
//  DeckControllerSample
//
//  Created by Aaron Alexander on 12/11/11.
//  Copyright (c) 2011 drunknbass. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SampleViewController : UIViewController

@property (nonatomic, retain) IBOutlet UINavigationBar *bar;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *closeButton;
@property (nonatomic, retain) IBOutlet UINavigationItem *titleItem;

- (IBAction)push:(id)sender;
- (IBAction)pop:(id)sender;
- (IBAction)popLast:(id)sender;
- (IBAction)popToSelf:(id)sender;
- (IBAction)presentModal:(id)sender;
- (IBAction)dismissModal:(id)sender;

@end
