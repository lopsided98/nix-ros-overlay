
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clips-vendor, cx-plugin, cx-utils, geometry-msgs, pluginlib, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-cx-tf2-pose-tracker-plugin";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/kilted/cx_tf2_pose_tracker_plugin/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "64bb9ccdc3cc6c6191797eed72c4c5ace99534a680e64dfd6a42bbf770e5febd";
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
