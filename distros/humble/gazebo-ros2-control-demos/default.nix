
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, control-msgs, diff-drive-controller, effort-controllers, gazebo-ros, gazebo-ros2-control, geometry-msgs, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, rclcpp, rclcpp-action, robot-state-publisher, ros2-control, std-msgs, tricycle-controller, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-humble-gazebo-ros2-control-demos";
  version = "0.4.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros2_control-release/archive/release/humble/gazebo_ros2_control_demos/0.4.9-1.tar.gz";
    name = "0.4.9-1.tar.gz";
    sha256 = "af0fa2c0bd0441b2bb9709c4d599a8760a4496c2ce6e837dbce3f0c3c3e68efd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rclcpp-action ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python control-msgs diff-drive-controller effort-controllers gazebo-ros gazebo-ros2-control geometry-msgs hardware-interface joint-state-broadcaster joint-trajectory-controller launch launch-ros rclcpp robot-state-publisher ros2-control std-msgs tricycle-controller velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "gazebo_ros2_control_demos";
    license = with lib.licenses; [ asl20 ];
  };
}
