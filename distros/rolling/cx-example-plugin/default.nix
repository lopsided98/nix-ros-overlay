
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clips-vendor, cx-plugin, cx-utils, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-cx-example-plugin";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_example_plugin/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "5a28aa7a23cb95b5899e12fbf0cfd3f2d05b445d9905c2b3fc97694324faf69d";
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
