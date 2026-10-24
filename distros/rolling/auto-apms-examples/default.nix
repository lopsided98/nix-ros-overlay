
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, auto-apms-behavior-tree, auto-apms-interfaces, auto-apms-mission, auto-apms-ros2behavior, auto-apms-util, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-auto-apms-examples";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/rolling/auto_apms_examples/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "8f40dc3993b8ebb3f7e88fcb3a12ab810410346d076cf8a3bd3809d171305b6b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ];
  propagatedBuildInputs = [ auto-apms-behavior-tree auto-apms-interfaces auto-apms-mission auto-apms-ros2behavior auto-apms-util rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Examples package for AutoAPMS";
    license = with lib.licenses; [ asl20 ];
  };
}
