
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, control-msgs, geometry-msgs, hardware-interface, ign-ros2-control, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, launch-testing-ament-cmake, python3Packages, pythonPackages, rclcpp, rclcpp-action, robot-state-publisher, ros-ign-gazebo, ros2controlcli, ros2launch, xacro }:
buildRosPackage {
  pname = "ros-humble-gz-ros2-control-tests";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/humble/gz_ros2_control_tests/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "990b78591fe88da1e543ab3bef272dce46caa6159c76fc2bbc8df9de81a42511";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rclcpp-action ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python control-msgs geometry-msgs hardware-interface ign-ros2-control joint-state-broadcaster joint-trajectory-controller launch launch-ros launch-testing-ament-cmake python3Packages.psutil pythonPackages.pytest rclcpp robot-state-publisher ros-ign-gazebo ros2controlcli ros2launch xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo ros2 control tests";
    license = with lib.licenses; [ asl20 ];
  };
}
