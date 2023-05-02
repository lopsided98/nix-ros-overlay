
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-manager, forward-command-controller, pluginlib, rclcpp, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-rolling-effort-controllers";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/effort_controllers/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "e98da645c9b41fb44912c0c87648182f840b69873b4136a513a11f7b739e4ff4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros forward-command-controller pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic controller for forwarding commands.'';
    license = with lib.licenses; [ asl20 ];
  };
}
