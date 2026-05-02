
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clips-vendor, cx-plugin, cx-utils, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-cx-file-load-plugin";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_file_load_plugin/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "08ad7ed1c5927ed3f32576f3728c2d205e098a9cd942e6ebeea431c485e80a42";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clips-vendor cx-plugin cx-utils pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CLIPS plugin that can load CLIPS code via load* and batch*";
    license = with lib.licenses; [ asl20 ];
  };
}
