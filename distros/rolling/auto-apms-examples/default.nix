
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, auto-apms-behavior-tree, auto-apms-interfaces, auto-apms-mission, auto-apms-ros2behavior, auto-apms-util, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-auto-apms-examples";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/rolling/auto_apms_examples/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "215ac48879dc5bb9b0fe73a1236dd98ed7afaec4a976f7bb767f9a2f0cba2fe8";
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
