
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, lifecycle-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-realtime-tools";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_tools-release/archive/release/rolling/realtime_tools/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "b37ad48b7994579ef8a6ec2702327f8d47994a77a7353ca91f0418cedb1616df";
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
