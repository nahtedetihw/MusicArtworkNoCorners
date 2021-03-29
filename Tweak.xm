%hook UIImageView
-(void)didMoveToSuperview {
    %orig;
    if ([NSStringFromClass([((UIImageView *)self) class]) isEqualToString:@"MusicApplication.ArtworkComponentImageView"]) {
        self.layer.cornerRadius = 0;
        self.layer.maskedCorners = 0;
    }
}
%end
