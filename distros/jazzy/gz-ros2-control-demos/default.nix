
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, control-msgs, diff-drive-controller, effort-controllers, geometry-msgs, gz-ros2-control, hardware-interface, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, rclcpp, rclcpp-action, robot-state-publisher, ros-gz-bridge, ros-gz-sim, ros2controlcli, ros2launch, std-msgs, tricycle-controller, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-jazzy-gz-ros2-control-demos";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/jazzy/gz_ros2_control_demos/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "0bd81ce0629d6f14d2dd1c99b75b839922f0c1622d0469133552698389a61227";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rclcpp-action ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python control-msgs diff-drive-controller effort-controllers geometry-msgs gz-ros2-control hardware-interface imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-ros rclcpp robot-state-publisher ros-gz-bridge ros-gz-sim ros2controlcli ros2launch std-msgs tricycle-controller velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "gz_ros2_control_demos";
    license = with lib.licenses; [ asl20 ];
  };
}
