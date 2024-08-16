
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-manager, forward-command-controller, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-iron-effort-controllers";
  version = "3.26.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/iron/effort_controllers/3.26.1-1.tar.gz";
    name = "3.26.1-1.tar.gz";
    sha256 = "6766e07187f60bdcf78fcc482305b924b8c0fb3b95b3053c5ee34b12bfebc8bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros forward-command-controller pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Generic controller for forwarding commands.";
    license = with lib.licenses; [ asl20 ];
  };
}
