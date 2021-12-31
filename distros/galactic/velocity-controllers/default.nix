
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, controller-manager, forward-command-controller, hardware-interface, pluginlib, rclcpp, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-galactic-velocity-controllers";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/galactic/velocity_controllers/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "179727388643ff840ab822e4a7fae7b7035f1b125607f988f50d2b3520e62df7";
  };

  buildType = "ament_cmake";
  buildInputs = [ pluginlib ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface ros2-control-test-assets ];
  propagatedBuildInputs = [ forward-command-controller rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic controller for forwarding commands.'';
    license = with lib.licenses; [ asl20 ];
  };
}
