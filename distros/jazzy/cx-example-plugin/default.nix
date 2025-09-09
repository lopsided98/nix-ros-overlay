
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clips-vendor, cx-plugin, cx-utils, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-cx-example-plugin";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/jazzy/cx_example_plugin/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "787bc0c0cd9fc1bdde3ec8f8201ea03e487c8b9c6667cea1540194dfd6ae6989";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clips-vendor cx-plugin cx-utils pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CLIPS plugin example that does not actually do anything and rather serves as boilerplate";
    license = with lib.licenses; [ asl20 ];
  };
}
