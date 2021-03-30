%hook UIImageView // hook the base class
-(void)didMoveToSuperview {
    %orig;
    if ([NSStringFromClass([((UIImageView *)self) class]) isEqualToString:@"MusicApplication.ArtworkComponentImageView"]) { // point our base class to the swift class
        self.layer.cornerRadius = 0;
        self.layer.maskedCorners = 0;
    }
}
%end
