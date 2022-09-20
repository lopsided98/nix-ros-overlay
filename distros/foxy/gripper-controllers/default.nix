
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, control-toolbox, controller-interface, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-action, realtime-tools, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-foxy-gripper-controllers";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/gripper_controllers/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "25727bffe6f4a4e3880170699d3be80860aefad82cf2acd91c8fdd88ddaf22ab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pluginlib ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs control-toolbox controller-interface hardware-interface rclcpp rclcpp-action realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The gripper_controllers package'';
    license = with lib.licenses; [ asl20 ];
  };
}
