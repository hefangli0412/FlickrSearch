//
//  FlickrPhotoCell.h
//  FlickrSearch
//
//  Created by Hefang Li on 9/29/14.
//  Copyright (c) 2014 hfl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@class FlickrPhoto;

@interface FlickrPhotoCell : UICollectionViewCell
@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) FlickrPhoto *photo;
@end
