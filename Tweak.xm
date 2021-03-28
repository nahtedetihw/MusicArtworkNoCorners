@interface UIImageView (Private)
- (id)_viewControllerForAncestor;
@end

%hook UIImageView
-(void)didMoveToSuperview {
    %orig;
    if ([NSStringFromClass([((UIImageView *)self) class]) isEqualToString:@"MusicApplication.ArtworkComponentImageView"] && [NSStringFromClass([((UIImageView *)self).superview class]) isEqualToString:@"MusicApplication.NowPlayingContentView"] && ![NSStringFromClass([((UIImageView *)self)._viewControllerForAncestor class]) isEqualToString:@"MusicApplication.MiniPlayerViewController"]) {
        self.layer.cornerRadius = 0;
        self.layer.maskedCorners = 0;
    }
    if ([NSStringFromClass([((UIImageView *)self) class]) isEqualToString:@"MusicApplication.ArtworkComponentImageView"] && [NSStringFromClass([((UIImageView *)self).superview class]) isEqualToString:@"MusicApplication.NowPlayingContentView"] && [NSStringFromClass([((UIImageView *)self)._viewControllerForAncestor class]) isEqualToString:@"MusicApplication.MiniPlayerViewController"]) {
        self.layer.cornerRadius = 0;
        self.layer.maskedCorners = 0;
    }
}
%end
