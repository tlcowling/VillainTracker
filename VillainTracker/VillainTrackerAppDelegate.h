//
//  VillainTrackerAppDelegate.h
//  VillainTracker
//
//  Created by Thoughtworks Technologies on 08/03/12.
//  Copyright 2012 isassetmgmt@thoughtworks.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface VillainTrackerAppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet NSTextField            *nameView;
    IBOutlet NSTextField            *lastKnownLocationView;
    IBOutlet NSDatePicker           *lastSeenDateView;
    IBOutlet NSComboBox             *swornEnemyView;
    IBOutlet NSMatrix               *primaryMotivationView;
    IBOutlet NSMatrix               *powersView;
    IBOutlet NSPopUpButton          *powerSourceView;
    IBOutlet NSLevelIndicator       *evilnessView;
    IBOutlet NSImageView            *mugshotView;
    IBOutlet NSTextView             *notesView;
    
    NSWindow                        *window;
    NSMutableDictionary             *villain;
}

@property (assign) IBOutlet NSWindow                *window;
@property (retain) NSMutableDictionary              *villain;

- (IBAction)takeName:(id)sender;
- (IBAction)takeLastKnownLocation:(id)sender;
- (IBAction)takeLastSeenDate:(id)sender;
- (IBAction)takeSwornEnemy:(id)sender;
- (IBAction)takePrimaryMotivation:(id)sender;
- (IBAction)takePowerSource:(id)sender;
- (IBAction)takePowers:(id)sender;
- (IBAction)takeMugShot:(id)sender;
- (IBAction)takeEvilness:(id)sender;



@end
