
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-steering-controller, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, control-msgs, control-toolbox, diff-drive-controller, effort-controllers, force-torque-sensor-broadcaster, geometry-msgs, gz-ros2-control, gz-sim-vendor, hardware-interface, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, mecanum-drive-controller, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, robot-state-publisher, ros-gz-bridge, ros-gz-sim, ros2-control-cmake, ros2controlcli, ros2launch, std-msgs, tricycle-steering-controller, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-rolling-gz-ros2-control-demos";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/rolling/gz_ros2_control_demos/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "4540c8098954ca7c9e625cb97cece19cd419d1ffcf3e3a30714183f08cb9e7a9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pluginlib rclcpp-action ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ackermann-steering-controller ament-index-python control-msgs control-toolbox diff-drive-controller effort-controllers force-torque-sensor-broadcaster geometry-msgs gz-ros2-control gz-sim-vendor hardware-interface imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-ros mecanum-drive-controller rclcpp rclcpp-lifecycle robot-state-publisher ros-gz-bridge ros-gz-sim ros2-control-cmake ros2controlcli ros2launch std-msgs tricycle-steering-controller velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "gz_ros2_control_demos";
    license = with lib.licenses; [ asl20 ];
  };
}
