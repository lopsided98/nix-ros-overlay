
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-steering-controller, ament-cmake, ament-index-python, control-msgs, control-toolbox, diff-drive-controller, force-torque-sensor-broadcaster, forward-command-controller, geometry-msgs, gz-ros2-control, gz-sim-vendor, hardware-interface, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, mecanum-drive-controller, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, robot-state-publisher, ros-gz-bridge, ros-gz-sim, ros2-control-cmake, ros2controlcli, ros2launch, std-msgs, tricycle-controller, xacro }:
buildRosPackage {
  pname = "ros-jazzy-gz-ros2-control-demos";
  version = "1.2.20-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/jazzy/gz_ros2_control_demos/1.2.20-1.tar.gz";
    name = "1.2.20-1.tar.gz";
    sha256 = "89f7955149e3968742387063d9c700976fc3328c3f330cd22604dbbef9911295";
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
