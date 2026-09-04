
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-steering-controller, ament-cmake, ament-index-python, control-msgs, control-toolbox, diff-drive-controller, force-torque-sensor-broadcaster, forward-command-controller, geometry-msgs, gz-ros2-control, gz-sim-vendor, hardware-interface, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, mecanum-drive-controller, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, robot-state-publisher, ros-gz-bridge, ros-gz-sim, ros2-control-cmake, ros2controlcli, ros2launch, std-msgs, tricycle-controller, xacro }:
buildRosPackage {
  pname = "ros-rolling-gz-ros2-control-demos";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/rolling/gz_ros2_control_demos/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "675d64d1b48d2d276fbce3fcfc2345866cfed0e158b71f0cd544e6dddb9ebd37";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pluginlib rclcpp-action ];
  propagatedBuildInputs = [ ackermann-steering-controller ament-index-python control-msgs control-toolbox diff-drive-controller force-torque-sensor-broadcaster forward-command-controller geometry-msgs gz-ros2-control gz-sim-vendor hardware-interface imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-ros mecanum-drive-controller rclcpp rclcpp-lifecycle robot-state-publisher ros-gz-bridge ros-gz-sim ros2-control-cmake ros2controlcli ros2launch std-msgs tricycle-controller xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "gz_ros2_control_demos";
    license = with lib.licenses; [ asl20 ];
  };
}
