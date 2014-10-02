//
//  FlickrPhotoViewController.h
//  FlickrSearch
//
//  Created by Hefang Li on 10/2/14.
//  Copyright (c) 2014 hfl. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlickrPhoto;

@interface FlickrPhotoViewController : UIViewController

@property(nonatomic, strong) FlickrPhoto *flickrPhoto;
@property (weak) IBOutlet UIImageView *imageView;

-(IBAction)done:(id) sender;

@end
