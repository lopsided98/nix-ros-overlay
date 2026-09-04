
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager-msgs, moveit-common, moveit-core, moveit-simple-controller-manager, pluginlib, rclcpp-action, trajectory-msgs }:
buildRosPackage {
  pname = "ros-lyrical-moveit-ros-control-interface";
  version = "2.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_ros_control_interface/2.15.1-1.tar.gz";
    name = "2.15.1-1.tar.gz";
    sha256 = "f1e20ad4af78112f231e417827f9950ec5e056a99a52c51a51cc6f78ecdc4aa2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager-msgs moveit-common moveit-core moveit-simple-controller-manager pluginlib rclcpp-action trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros_control controller manager interface for MoveIt";
    license = with lib.licenses; [ bsd3 ];
  };
}
