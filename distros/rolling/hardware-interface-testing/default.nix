
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, fmt, hardware-interface, lifecycle-msgs, pluginlib, rclcpp-lifecycle, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-rolling-hardware-interface-testing";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/hardware_interface_testing/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "8102b15e8563d00b864648ff39d03d8028165c46f1d915cec733a7a1826882d7";
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
