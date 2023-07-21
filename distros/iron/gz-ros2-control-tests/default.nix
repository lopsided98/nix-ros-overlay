
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, control-msgs, geometry-msgs, gz-ros2-control, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, launch-testing-ament-cmake, python3Packages, pythonPackages, rclcpp, rclcpp-action, robot-state-publisher, ros-gz-sim, ros2controlcli, ros2launch, xacro }:
buildRosPackage {
  pname = "ros-iron-gz-ros2-control-tests";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-controls/gz_ros2_control/archive/release/iron/gz_ros2_control_tests/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "a44edaf69f90f3f5f9bf38cfa149ec5448a13a5707b881011902540e2ced04df";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rclcpp-action ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python control-msgs geometry-msgs gz-ros2-control hardware-interface joint-state-broadcaster joint-trajectory-controller launch launch-ros launch-testing-ament-cmake python3Packages.psutil pythonPackages.pytest rclcpp robot-state-publisher ros-gz-sim ros2controlcli ros2launch xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Gazebo ros2 control tests'';
    license = with lib.licenses; [ asl20 ];
  };
}
