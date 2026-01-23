
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, backward-ros, builtin-interfaces, control-msgs, controller-interface, generate-parameter-library, pluginlib, rclcpp-lifecycle, rcutils, realtime-tools, sensor-msgs, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-kilted-om-joint-trajectory-command-broadcaster";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/kilted/om_joint_trajectory_command_broadcaster/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "13a077313cee3be608d3e7a1f5b1e5fac6ebac6cfea238972389c67347e7efcb";
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
