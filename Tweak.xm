%hook UIImageView // hook the base class
-(void)didMoveToSuperview {
    %orig;
    if ([NSStringFromClass([((UIImageView *)self) class]) isEqualToString:@"MusicApplication.ArtworkComponentImageView"]) { // point our base class to the swift class
        // This hooks all instances of MusicApplication.ArtworkComponentImageView as requested to remove corner radius from all artwork in Music.app
        self.layer.cornerRadius = 0;
        self.layer.maskedCorners = 0;
    }
}
%end
