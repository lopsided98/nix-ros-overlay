
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, hardware-interface, lifecycle-msgs, pluginlib, rclcpp-lifecycle, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-iron-hardware-interface-testing";
  version = "3.27.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/iron/hardware_interface_testing/3.27.0-1.tar.gz";
    name = "3.27.0-1.tar.gz";
    sha256 = "0a48cb35927ad470787d5d03128eaffb0358275a4f0e7185d2dbeb815fbd9a6a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ control-msgs hardware-interface lifecycle-msgs pluginlib rclcpp-lifecycle ros2-control-test-assets ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control hardware interface testing";
    license = with lib.licenses; [ asl20 ];
  };
}
