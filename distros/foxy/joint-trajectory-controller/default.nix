
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, angles, control-msgs, controller-interface, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets, trajectory-msgs }:
buildRosPackage {
  pname = "ros-foxy-joint-trajectory-controller";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/joint_trajectory_controller/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "7bee94e92fadc54dddb5d3ff934e8e2e3c596f38c92deadda039aaa4a9232510";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ angles control-msgs controller-interface hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller for executing joint-space trajectories on a group of joints'';
    license = with lib.licenses; [ asl20 ];
  };
}
