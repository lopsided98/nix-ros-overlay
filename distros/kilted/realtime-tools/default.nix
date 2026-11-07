
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, boost, fmt, libcap, lifecycle-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, ros2-control-cmake, test-msgs }:
buildRosPackage {
  pname = "ros-kilted-realtime-tools";
  version = "4.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_tools-release/archive/release/kilted/realtime_tools/4.11.1-1.tar.gz";
    name = "4.11.1-1.tar.gz";
    sha256 = "a68e45135ac9c2b02989106a408d1f1dd61cc73d2d8927a4c961897c0c7521ed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock lifecycle-msgs rclcpp-lifecycle test-msgs ];
  propagatedBuildInputs = [ ament-cmake boost fmt libcap rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.";
    license = with lib.licenses; [ bsd3 ];
  };
}
