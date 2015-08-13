//
//  MasterViewController.m
//  BlogReader
//
//  Created by Katherine Peterson on 2015-08-13.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titlesArray = [NSArray arrayWithObjects:@"Betting Against Myself", @"A Race and a Not-so-Fun Run", @"How to Travel Like a Spy", @"Winning Friends", @"From Living in Hell to Hiking There", @"Summer Goals", @"Katie's Meadery", @"Going Home as a Visitor", @"Hackfort - A Review", @"Truth Time - The Real Reason We Moved", @"Daydreaming About Summer Vacation", @"Calgary Makes Me Sick!", @"Step One - An Update", @"Podcast Roundup", @"Ethiopian Cooking Minus Exotic Ingredients", @"Winter Hiking - Not as Bad an Idea as You Might Think", @"Chinook Days", @"Running in a Winter Wonderland", @"The HTML One", @"Can He Afford Me Living Here?", nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSString *title = self.titlesArray[indexPath.row];
        [[segue destinationViewController] setDetailItem:title];
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titlesArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSString *object = self.titlesArray[indexPath.row];
    cell.textLabel.text = object;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


@end
