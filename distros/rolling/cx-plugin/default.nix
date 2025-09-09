
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clips-vendor, cx-utils, pluginlib, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-cx-plugin";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_plugin/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "8ff2d1f6ab28dea1811215b5d5da2b991fbf7b1c0cdb2c4883673ad2491e5107";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clips-vendor cx-utils pluginlib rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Base class for CLIPS plugins";
    license = with lib.licenses; [ asl20 ];
  };
}
