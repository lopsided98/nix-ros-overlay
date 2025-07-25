
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clips-vendor, cx-plugin, cx-utils, geometry-msgs, pluginlib, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-cx-tf2-pose-tracker-plugin";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/jazzy/cx_tf2_pose_tracker_plugin/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "8567aecbed85e7962ca444d9be8b683c6b75f4dfb9164bd4c9edcdbf9e983799";
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
