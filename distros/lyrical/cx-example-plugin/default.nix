
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clips-vendor, cx-plugin, cx-utils, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-cx-example-plugin";
  version = "0.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/lyrical/cx_example_plugin/0.1.3-3.tar.gz";
    name = "0.1.3-3.tar.gz";
    sha256 = "66e3f234e0508dab30f99b7efd4cdfe8fa8d1a17c1a92a28d91ebf1357fac44c";
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
