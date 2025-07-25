
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, fmt, hardware-interface, lifecycle-msgs, pluginlib, rclcpp-lifecycle, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-kilted-hardware-interface-testing";
  version = "5.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/kilted/hardware_interface_testing/5.4.0-1.tar.gz";
    name = "5.4.0-1.tar.gz";
    sha256 = "b1178c944bc3ad9aa58a416fca32aa798b48870e322f987d83129c1d74ef6697";
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
