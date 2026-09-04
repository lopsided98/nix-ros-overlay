
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ignition-gazebo6, ackermann-steering-controller, ament-cmake, ament-index-python, control-msgs, control-toolbox, diff-drive-controller, force-torque-sensor-broadcaster, forward-command-controller, geometry-msgs, gz-ros2-control, hardware-interface, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, mecanum-drive-controller, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, robot-state-publisher, ros-gz-bridge, ros-gz-sim, ros2controlcli, ros2launch, std-msgs, tricycle-controller, xacro }:
buildRosPackage {
  pname = "ros-humble-gz-ros2-control-demos";
  version = "0.7.21-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/humble/gz_ros2_control_demos/0.7.21-1.tar.gz";
    name = "0.7.21-1.tar.gz";
    sha256 = "541f50d6f4176547c92fcb605c50f0cd2c6417ffc3f95ef3812e23a4424c7e43";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pluginlib rclcpp-action ];
  propagatedBuildInputs = [ _unresolved_ignition-gazebo6 ackermann-steering-controller ament-index-python control-msgs control-toolbox diff-drive-controller force-torque-sensor-broadcaster forward-command-controller geometry-msgs gz-ros2-control hardware-interface imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-ros mecanum-drive-controller rclcpp rclcpp-lifecycle robot-state-publisher ros-gz-bridge ros-gz-sim ros2controlcli ros2launch std-msgs tricycle-controller xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "gz_ros2_control_demos";
    license = with lib.licenses; [ asl20 ];
  };
}
