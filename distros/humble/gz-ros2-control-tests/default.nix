
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, control-msgs, geometry-msgs, hardware-interface, ign-ros2-control, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, launch-testing-ament-cmake, python3Packages, rclcpp, rclcpp-action, robot-state-publisher, ros-ign-gazebo, ros2controlcli, ros2launch, xacro }:
buildRosPackage {
  pname = "ros-humble-gz-ros2-control-tests";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/humble/gz_ros2_control_tests/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "66e8940b65310dd7504b81c6229a3ffabb205aaf4de9f0454fa62f6b7067bc8e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rclcpp-action ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python control-msgs geometry-msgs hardware-interface ign-ros2-control joint-state-broadcaster joint-trajectory-controller launch launch-ros launch-testing-ament-cmake python3Packages.psutil python3Packages.pytest rclcpp robot-state-publisher ros-ign-gazebo ros2controlcli ros2launch xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo ros2 control tests";
    license = with lib.licenses; [ asl20 ];
  };
}
