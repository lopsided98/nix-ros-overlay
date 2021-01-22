
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, control-msgs, controller-interface, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools, test-robot-hardware, trajectory-msgs }:
buildRosPackage {
  pname = "ros-foxy-joint-trajectory-controller";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/joint_trajectory_controller/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "832513914516b39924aaade2c13092d85dcc4122d2e22779492afdfdda9574f2";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common controller-manager test-robot-hardware ];
  propagatedBuildInputs = [ angles control-msgs controller-interface hardware-interface pluginlib rclcpp rclcpp-lifecycle rcutils realtime-tools trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller for executing joint-space trajectories on a group of joints'';
    license = with lib.licenses; [ asl20 ];
  };
}
