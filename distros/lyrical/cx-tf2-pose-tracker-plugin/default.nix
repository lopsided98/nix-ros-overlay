
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clips-vendor, cx-plugin, cx-utils, geometry-msgs, pluginlib, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-cx-tf2-pose-tracker-plugin";
  version = "0.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/lyrical/cx_tf2_pose_tracker_plugin/0.1.3-3.tar.gz";
    name = "0.1.3-3.tar.gz";
    sha256 = "ba5742060ce1a9c2f107ecb65cd4a10bf460f11d3562823ee4e660cea6ef9004";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clips-vendor cx-plugin cx-utils geometry-msgs pluginlib tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Track poses via periodic tf lookups.";
    license = with lib.licenses; [ asl20 ];
  };
}
