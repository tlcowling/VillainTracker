//
//  VillainTrackerAppDelegate.m
//  VillainTracker
//
//  Created by Thoughtworks Technologies on 08/03/12.
//  Copyright 2012 isassetmgmt@thoughtworks.com. All rights reserved.
//

#import "VillainTrackerAppDelegate.h"

#define kName @"name"
#define kLastKnownLocation @"lastKnownLocation"
#define kLastSeenDate @"lastSeenDate"
#define kSwornEnemy @"swornEnemy"
#define kPrimaryMotivation @"primaryMotivation"
#define kPowers @"powers"
#define kPowerSource @"powerSource"
#define kEvilness @"evilness"
#define kMugshot @"mugshot"
#define kNotes @"notes"

@interface VillainTrackerAppDelegate (privateMethods)
- (void)updateDetailsViews;
@end

@implementation VillainTrackerAppDelegate (privateMethods)
- (void)updateDetailsViews{
    [nameView setStringValue:[villain objectForKey:kName]];
    [lastKnownLocationView setStringValue:[villain objectForKey:kLastKnownLocation]];
    [lastSeenDateView setDateValue:[villain objectForKey:kLastSeenDate]];
    [evilnessView setIntegerValue:[[villain objectForKey:kEvilness]integerValue]];
    [powerSourceView setTitle:[villain objectForKey:kPowerSource]];
    [mugshotView setImage:[villain objectForKey:kMugshot]];
    [notesView setString:[villain objectForKey:kNotes]];
}
@end

@implementation VillainTrackerAppDelegate

@synthesize window;
@synthesize villain;

- (IBAction)takeName:(id)sender{}
- (IBAction)takeLastKnownLocation:(id)sender{}
- (IBAction)takeLastSeenDate:(id)sender{}
- (IBAction)takeSwornEnemy:(id)sender{}
- (IBAction)takePrimaryMotivation:(id)sender{}
- (IBAction)takePowerSource:(id)sender{}
- (IBAction)takePowers:(id)sender{}
- (IBAction)takeMugShot:(id)sender{}
- (IBAction)takeEvilness:(id)sender{}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.villain = [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"Lex Luthor", kName,
                                                                      @"Smallville", kLastKnownLocation,
                                                                      [NSDate date], kLastSeenDate,
                                                                      @"Superman", kSwornEnemy,
                                                                      @"Revenge",   kPrimaryMotivation,
                                                                      [NSArray arrayWithObjects:@"Intellect",@"Leadership",nil], kPowers,
                                                                      @"Superhero action", kPowerSource,
                                                                      [NSNumber numberWithInt:9], kEvilness,
                                                                      [NSImage imageNamed:@"NSUser"], kMugshot,
                                                                      @"", kNotes,
                    nil];
    
    [self updateDetailsViews];
}

@end
