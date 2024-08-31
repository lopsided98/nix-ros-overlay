
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, lifecycle-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, test-msgs }:
buildRosPackage {
  pname = "ros-iron-realtime-tools";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_tools-release/archive/release/iron/realtime_tools/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "c173c4a57ff2b60e1ccf7193502dc090d43eca99044c1dff8336e0b9ca9a83e4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock lifecycle-msgs rclcpp-lifecycle test-msgs ];
  propagatedBuildInputs = [ ament-cmake rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.";
    license = with lib.licenses; [ "3-Clause-BSD" ];
  };
}
