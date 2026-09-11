
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, fmt, hardware-interface, lifecycle-msgs, pluginlib, rclcpp-lifecycle, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-jazzy-hardware-interface-testing";
  version = "4.48.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/hardware_interface_testing/4.48.1-1.tar.gz";
    name = "4.48.1-1.tar.gz";
    sha256 = "a3f046b9f944e147b4b940d3ec3bd252e51bf792d75b95d0a52d770a1fd8b37f";
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
