
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, angles, control-msgs, controller-interface, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets, trajectory-msgs }:
buildRosPackage {
  pname = "ros-foxy-joint-trajectory-controller";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/joint_trajectory_controller/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "e3238b3da258484d667f7709666c94e975b2d890b6a03aa219ed186a10d77f9f";
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
