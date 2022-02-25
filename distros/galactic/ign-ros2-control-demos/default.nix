
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, control-msgs, diff-drive-controller, effort-controllers, geometry-msgs, hardware-interface, ign-ros2-control, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, rclcpp, rclcpp-action, robot-state-publisher, ros-ign-gazebo, ros2controlcli, std-msgs, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-galactic-ign-ros2-control-demos";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/galactic/ign_ros2_control_demos/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "659f9efc644601052665d0505a19997e25654115903f8ce9dd8d83e6681cdaba";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-action ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python control-msgs diff-drive-controller effort-controllers geometry-msgs hardware-interface ign-ros2-control imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-ros rclcpp robot-state-publisher ros-ign-gazebo ros2controlcli std-msgs velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ign_ros2_control_demos'';
    license = with lib.licenses; [ asl20 ];
  };
}
