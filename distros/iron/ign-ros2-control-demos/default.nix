
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, control-msgs, diff-drive-controller, effort-controllers, geometry-msgs, hardware-interface, ign-ros2-control, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, rclcpp, rclcpp-action, robot-state-publisher, ros-ign-gazebo, ros2controlcli, ros2launch, std-msgs, tricycle-controller, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-iron-ign-ros2-control-demos";
  version = "0.6.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/iron/ign_ros2_control_demos/0.6.1-4.tar.gz";
    name = "0.6.1-4.tar.gz";
    sha256 = "5ebe942a613cd2e21fb468d3f0d884e54e913b717bdae97ca5e6dc20aab0a592";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rclcpp-action ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python control-msgs diff-drive-controller effort-controllers geometry-msgs hardware-interface ign-ros2-control imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-ros rclcpp robot-state-publisher ros-ign-gazebo ros2controlcli ros2launch std-msgs tricycle-controller velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ign_ros2_control_demos'';
    license = with lib.licenses; [ asl20 ];
  };
}
