
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, backward-ros, builtin-interfaces, control-msgs, controller-interface, generate-parameter-library, pluginlib, rclcpp-lifecycle, rcutils, realtime-tools, sensor-msgs, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-jazzy-om-joint-trajectory-command-broadcaster";
  version = "3.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/om_joint_trajectory_command_broadcaster/3.2.4-1.tar.gz";
    name = "3.2.4-1.tar.gz";
    sha256 = "bfd956dc8eadcd9aaaf796427d67f5c1d7a041f28a702b357f3b7a1a1fd72671";
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
