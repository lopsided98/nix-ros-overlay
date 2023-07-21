
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, control-msgs, diff-drive-controller, effort-controllers, geometry-msgs, gz-ros2-control, hardware-interface, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, rclcpp, rclcpp-action, robot-state-publisher, ros-gz-sim, ros2controlcli, ros2launch, std-msgs, tricycle-controller, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-iron-gz-ros2-control-demos";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-controls/gz_ros2_control/archive/release/iron/gz_ros2_control_demos/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "7da3b265dd017964d7865a7072e498c71b2fa647f182b6f6b25868494d10b5ad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rclcpp-action ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python control-msgs diff-drive-controller effort-controllers geometry-msgs gz-ros2-control hardware-interface imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-ros rclcpp robot-state-publisher ros-gz-sim ros2controlcli ros2launch std-msgs tricycle-controller velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''gz_ros2_control_demos'';
    license = with lib.licenses; [ asl20 ];
  };
}
