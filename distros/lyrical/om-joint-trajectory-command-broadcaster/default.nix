
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, backward-ros, builtin-interfaces, control-msgs, controller-interface, generate-parameter-library, pluginlib, rclcpp-lifecycle, rcutils, realtime-tools, sensor-msgs, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-lyrical-om-joint-trajectory-command-broadcaster";
  version = "4.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/lyrical/om_joint_trajectory_command_broadcaster/4.1.2-3.tar.gz";
    name = "4.1.2-3.tar.gz";
    sha256 = "f0e7183ecda36f8044b13ef9918826a4497cd01f2079d5aa7eae6810806a0dc2";
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
