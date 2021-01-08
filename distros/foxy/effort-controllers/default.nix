
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, controller-manager, forward-command-controller, pluginlib, rclcpp, test-robot-hardware }:
buildRosPackage {
  pname = "ros-foxy-effort-controllers";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/effort_controllers/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "1da6c9b4165bb2ab9211b29c09ae9c36c288a96e22b51d2a93a3575c8f96fa18";
  };

  buildType = "ament_cmake";
  buildInputs = [ pluginlib ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common controller-manager test-robot-hardware ];
  propagatedBuildInputs = [ forward-command-controller rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic controller for forwarding commands.'';
    license = with lib.licenses; [ asl20 ];
  };
}
