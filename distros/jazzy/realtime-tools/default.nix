
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, lifecycle-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-realtime-tools";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_tools-release/archive/release/jazzy/realtime_tools/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "b21dc5f981eb2fe68539e0d0288d7e32d6a59419da6bf262d8497730f80ab72b";
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
