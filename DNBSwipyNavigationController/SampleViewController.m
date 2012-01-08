//
//  SampleViewController.m
//  DeckControllerSample
//
//  Created by Aaron Alexander on 12/11/11.
//  Copyright (c) 2011 drunknbass. All rights reserved.
//

#import "SampleViewController.h"

@implementation SampleViewController
@synthesize bar = _bar;
@synthesize closeButton;
@synthesize titleItem;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    titleItem.title = [NSString stringWithFormat:@"%i", self.hash];
    self.view.tag = self.hash;
    NSArray *colors = [NSArray arrayWithObjects:[UIColor redColor], [UIColor purpleColor], [UIColor blueColor], [UIColor greenColor], [UIColor orangeColor], nil];
    self.view.backgroundColor = [colors objectAtIndex: (random() % [colors count])];
}
- (void)viewWillAppear:(BOOL)animated {
    if (self.navigationController != nil) {
        self.bar.hidden = YES;
    }
}

- (void)viewDidUnload
{
    [self setCloseButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

- (IBAction)push:(id)sender {
    SampleViewController *controller = [[SampleViewController alloc] initWithNibName:@"SampleViewController" bundle:nil];
    [self.navigationController pushViewController:controller animated:YES];
}

- (IBAction)pop:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}
- (IBAction)popLast:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)popToSelf:(id)sender {
    [self.navigationController popToViewController:self animated:YES];
}

- (IBAction)presentModal:(id)sender {
    SampleViewController *controller = [[SampleViewController alloc] initWithNibName:@"SampleViewController" bundle:nil];
    [self.navigationController presentModalViewController:controller animated:YES];
}

- (IBAction)dismissModal:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

@end
