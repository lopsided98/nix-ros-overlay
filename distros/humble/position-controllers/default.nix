
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-manager, forward-command-controller, pluginlib, rclcpp, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-humble-position-controllers";
  version = "2.25.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/position_controllers/2.25.0-1.tar.gz";
    name = "2.25.0-1.tar.gz";
    sha256 = "09e0f09f473fdf9fd14efa47029e40e92212be6cc452769276b53fcb5643c8f7";
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
