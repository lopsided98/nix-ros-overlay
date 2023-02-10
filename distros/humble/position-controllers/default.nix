
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-manager, forward-command-controller, pluginlib, rclcpp, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-humble-position-controllers";
  version = "2.16.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/position_controllers/2.16.1-1.tar.gz";
    name = "2.16.1-1.tar.gz";
    sha256 = "981777e9d4dc2ec9446a51b6cfe2be25fe23e788bb8fccc9bf0e80ae8dfdd2be";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pluginlib ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros forward-command-controller rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic controller for forwarding commands.'';
    license = with lib.licenses; [ asl20 ];
  };
}
