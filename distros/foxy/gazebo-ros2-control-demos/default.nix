
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, control-msgs, gazebo-ros, gazebo-ros2-control, hardware-interface, joint-state-controller, joint-trajectory-controller, launch, launch-ros, rclcpp, rclcpp-action, robot-state-publisher, std-msgs, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-foxy-gazebo-ros2-control-demos";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros2_control-release/archive/release/foxy/gazebo_ros2_control_demos/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "0aa94bfccea3be2f45b9b8a26f1dc128b8986ef9ebab7ebdbe321b5ce64438c3";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-action ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python control-msgs gazebo-ros gazebo-ros2-control hardware-interface joint-state-controller joint-trajectory-controller launch launch-ros rclcpp robot-state-publisher std-msgs velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''gazebo_ros2_control_demos'';
    license = with lib.licenses; [ asl20 ];
  };
}
