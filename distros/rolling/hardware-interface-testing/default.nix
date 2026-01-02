
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, fmt, hardware-interface, lifecycle-msgs, pluginlib, rclcpp-lifecycle, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-rolling-hardware-interface-testing";
  version = "6.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/hardware_interface_testing/6.3.1-1.tar.gz";
    name = "6.3.1-1.tar.gz";
    sha256 = "81d76933a8afcb01eb004350a893a2df623c944a6458aa232c91e65a22bfd177";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ control-msgs fmt hardware-interface lifecycle-msgs pluginlib rclcpp-lifecycle ros2-control-test-assets ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Commonly used test fixtures for the ros2_control framework";
    license = with lib.licenses; [ asl20 ];
  };
}
