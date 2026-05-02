
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clips-vendor, cx-plugin, cx-utils, geometry-msgs, pluginlib, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-cx-tf2-pose-tracker-plugin";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_tf2_pose_tracker_plugin/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "02a560c4426b973dec4821a03eaa9322af7eaa9d3d4ec0717e7154cd5831f7d1";
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
