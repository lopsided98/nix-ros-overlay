
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager-msgs, moveit-common, moveit-core, moveit-simple-controller-manager, pluginlib, rclcpp-action, trajectory-msgs }:
buildRosPackage {
  pname = "ros-jazzy-moveit-ros-control-interface";
  version = "2.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_ros_control_interface/2.12.1-1.tar.gz";
    name = "2.12.1-1.tar.gz";
    sha256 = "eb2bcf0ff86d074365dd6b15de172a160b799fa257fa9ac5a207ed3fc7dae17b";
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
