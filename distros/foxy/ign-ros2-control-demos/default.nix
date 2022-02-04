
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, control-msgs, effort-controllers, hardware-interface, ign-ros2-control, imu-sensor-broadcaster, joint-state-controller, joint-trajectory-controller, launch, launch-ros, rclcpp, rclcpp-action, robot-state-publisher, ros-ign-gazebo, ros2controlcli, std-msgs, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-foxy-ign-ros2-control-demos";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/foxy/ign_ros2_control_demos/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "91356545bec37a898d5014244fdd0a8f6193c56b49600599fef05fb0a60ee747";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-action ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python control-msgs effort-controllers hardware-interface ign-ros2-control imu-sensor-broadcaster joint-state-controller joint-trajectory-controller launch launch-ros rclcpp robot-state-publisher ros-ign-gazebo ros2controlcli std-msgs velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ign_ros2_control_demos'';
    license = with lib.licenses; [ asl20 ];
  };
}
