
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ignition-gazebo6, ackermann-steering-controller, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, control-msgs, control-toolbox, diff-drive-controller, force-torque-sensor-broadcaster, forward-command-controller, geometry-msgs, gz-ros2-control, hardware-interface, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, mecanum-drive-controller, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, robot-state-publisher, ros-gz-bridge, ros-gz-sim, ros2controlcli, ros2launch, std-msgs, tricycle-controller, xacro }:
buildRosPackage {
  pname = "ros-humble-gz-ros2-control-demos";
  version = "0.7.20-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/humble/gz_ros2_control_demos/0.7.20-1.tar.gz";
    name = "0.7.20-1.tar.gz";
    sha256 = "4353ebd16d1975d95763d189d313ed6ec85b6b0c3594afc310576e668759ba5d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pluginlib rclcpp-action ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_ignition-gazebo6 ackermann-steering-controller ament-index-python control-msgs control-toolbox diff-drive-controller force-torque-sensor-broadcaster forward-command-controller geometry-msgs gz-ros2-control hardware-interface imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-ros mecanum-drive-controller rclcpp rclcpp-lifecycle robot-state-publisher ros-gz-bridge ros-gz-sim ros2controlcli ros2launch std-msgs tricycle-controller xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "gz_ros2_control_demos";
    license = with lib.licenses; [ asl20 ];
  };
}
