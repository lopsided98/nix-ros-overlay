
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-manager, forward-command-controller, hardware-interface, pluginlib, rclcpp, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-iron-velocity-controllers";
  version = "3.20.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/iron/velocity_controllers/3.20.1-1.tar.gz";
    name = "3.20.1-1.tar.gz";
    sha256 = "2a0b2405775cf1ea68c56fe0bf53d334349391fe3879aff54f6c1a45fc0fa430";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros forward-command-controller pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic controller for forwarding commands.'';
    license = with lib.licenses; [ asl20 ];
  };
}
