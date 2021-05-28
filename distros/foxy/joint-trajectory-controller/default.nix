
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, control-msgs, controller-interface, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools, ros2-control-test-assets, trajectory-msgs }:
buildRosPackage {
  pname = "ros-foxy-joint-trajectory-controller";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/joint_trajectory_controller/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "33f4bec0a12ead0180743a03ff6f5966d31552c300be438f7245dc439f842d91";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ angles control-msgs controller-interface hardware-interface pluginlib rclcpp rclcpp-lifecycle rcutils realtime-tools trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller for executing joint-space trajectories on a group of joints'';
    license = with lib.licenses; [ asl20 ];
  };
}
