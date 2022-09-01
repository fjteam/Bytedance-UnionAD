//
// Created by bytedance on 2020/10/20.
// Copyright (c) 2020 bytedance. All rights reserved.
//

#import "BUDFullScreenVideoAdListViewController.h"
#import "BUDFullscreenViewController.h"
#import "BUDSlotViewModel.h"
#import "BUDActionCellView.h"
#import "BUDSlotID.h"
#import "BUDExpressFullScreenVideoViewController.h"


@implementation BUDFullScreenVideoAdListViewController

- (NSArray<NSArray<BUDActionModel *> *> *)itemsForList {
    __weak typeof(self) weakSelf = self;
    BUDActionModel *normalCellItem = [BUDActionModel plainTitleActionModel:[NSString localizedStringForKey:kFullscreenAdNative] type:BUDCellType_native action:^{
        __strong typeof(weakSelf) self = weakSelf;
        BUDFullscreenViewController *vc = [[BUDFullscreenViewController alloc] init];
        vc.adName = [NSString localizedStringForKey:kFullscreenAdNative];
        [self.navigationController pushViewController:vc animated:YES];
    }];

    BUDActionModel *expressCellItem = [BUDActionModel plainTitleActionModel:[NSString localizedStringForKey:kFullscreenAdExpress] type:BUDCellType_native action:^{
        __strong typeof(weakSelf) self = weakSelf;
        BUDExpressFullScreenVideoViewController *vc = [[BUDExpressFullScreenVideoViewController alloc] init];
        vc.adName = [NSString localizedStringForKey:kFullscreenAdExpress];
        [self.navigationController pushViewController:vc animated:YES];
    }];
    
    BUDActionModel *interstitalCellItem = [BUDActionModel plainTitleActionModel:[NSString localizedStringForKey:kFullscreenAdInterstital] type:BUDCellType_native action:^{
        __strong typeof(weakSelf) self = weakSelf;
        BUDExpressFullScreenVideoViewController *vc = [[BUDExpressFullScreenVideoViewController alloc] init];
        vc.isInterstitialAd = YES;
        vc.adName = [NSString localizedStringForKey:kFullscreenAdInterstital];
        [self.navigationController pushViewController:vc animated:YES];
    }];

    return @[@[normalCellItem,expressCellItem,interstitalCellItem]];
}

@end
