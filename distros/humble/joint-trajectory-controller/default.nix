
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, angles, control-msgs, control-toolbox, controller-interface, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-joint-trajectory-controller";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/joint_trajectory_controller/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "f94c3bc85c19aa51980e27348926fa4e930a73872dea21a320a68037a3c376f1";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ angles control-msgs control-toolbox controller-interface hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller for executing joint-space trajectories on a group of joints'';
    license = with lib.licenses; [ asl20 ];
  };
}
