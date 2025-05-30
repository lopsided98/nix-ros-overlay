
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, builtin-interfaces, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools, ros2-control-test-assets, sensor-msgs, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-jazzy-ffw-joint-trajectory-command-broadcaster";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_joint_trajectory_command_broadcaster/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "76b177ca5e7c803e151bc714d5488dc18ed83767f47c60971354c237c09adb4f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface hardware-interface-testing rclcpp ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros builtin-interfaces control-msgs controller-interface generate-parameter-library pluginlib rclcpp-lifecycle rcutils realtime-tools sensor-msgs trajectory-msgs urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Joint Trajectory Command Broadcaster ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
