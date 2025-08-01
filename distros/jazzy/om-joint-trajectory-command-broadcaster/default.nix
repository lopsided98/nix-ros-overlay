
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, backward-ros, builtin-interfaces, control-msgs, controller-interface, generate-parameter-library, pluginlib, rclcpp-lifecycle, rcutils, realtime-tools, sensor-msgs, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-jazzy-om-joint-trajectory-command-broadcaster";
  version = "4.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/om_joint_trajectory_command_broadcaster/4.0.6-1.tar.gz";
    name = "4.0.6-1.tar.gz";
    sha256 = "67b9b686a49a94e1c3d0da6c9ab47f90ca3a8b3eef0eea8f0558b5032ffed921";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ backward-ros builtin-interfaces control-msgs controller-interface generate-parameter-library pluginlib rclcpp-lifecycle rcutils realtime-tools sensor-msgs trajectory-msgs urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Joint Trajectory Command Broadcaster ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
