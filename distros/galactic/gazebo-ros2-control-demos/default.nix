
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, control-msgs, effort-controllers, gazebo-ros, gazebo-ros2-control, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, rclcpp, rclcpp-action, robot-state-publisher, ros2-control, ros2-controllers, std-msgs, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-galactic-gazebo-ros2-control-demos";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros2_control-release/archive/release/galactic/gazebo_ros2_control_demos/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "eea86425ac6232b046bd646a8660e87e3875ba4a669f1d84cc09241d86dfece0";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-action ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python control-msgs effort-controllers gazebo-ros gazebo-ros2-control hardware-interface joint-state-broadcaster joint-trajectory-controller launch launch-ros rclcpp robot-state-publisher ros2-control ros2-controllers std-msgs velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''gazebo_ros2_control_demos'';
    license = with lib.licenses; [ asl20 ];
  };
}
