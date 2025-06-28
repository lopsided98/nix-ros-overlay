
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-steering-controller, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, control-msgs, diff-drive-controller, effort-controllers, geometry-msgs, gz-ros2-control, hardware-interface, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, mecanum-drive-controller, rclcpp, rclcpp-action, robot-state-publisher, ros-gz-bridge, ros-gz-sim, ros2-control-cmake, ros2controlcli, ros2launch, std-msgs, tricycle-steering-controller, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-rolling-gz-ros2-control-demos";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/rolling/gz_ros2_control_demos/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "4c8c2dcb6eaa2b99b712688d6bdbcd9fd24d34b7c781daafde8ca8d6e98574c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rclcpp-action ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ackermann-steering-controller ament-index-python control-msgs diff-drive-controller effort-controllers geometry-msgs gz-ros2-control hardware-interface imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-ros mecanum-drive-controller rclcpp robot-state-publisher ros-gz-bridge ros-gz-sim ros2-control-cmake ros2controlcli ros2launch std-msgs tricycle-steering-controller velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "gz_ros2_control_demos";
    license = with lib.licenses; [ asl20 ];
  };
}
