const std = @import("std");
const zine = @import("zine");

pub fn build(b: *std.Build) !void {
    zine.website(b, .{
        .title = "Gota7",
        .host_url = "https://gota7.com",
        .layouts_dir_path = "layouts",
        .content_dir_path = "content",
        .assets_dir_path = "assets",
        .static_assets = &.{
            "images/bg.png",
            "images/cursor.png",
            "images/titlebar.png",
        },
    });
}
