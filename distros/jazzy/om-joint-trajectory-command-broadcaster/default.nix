
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, backward-ros, builtin-interfaces, control-msgs, controller-interface, generate-parameter-library, pluginlib, rclcpp-lifecycle, rcutils, realtime-tools, sensor-msgs, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-jazzy-om-joint-trajectory-command-broadcaster";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/om_joint_trajectory_command_broadcaster/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "f2a99d06d9644ff93c3151633fba923d67e54799c6fcf81cc01e24e9dcf5150d";
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
