
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, control-msgs, geometry-msgs, moveit-configs-utils, moveit-core, moveit-kinematics, moveit-msgs, moveit-planners, moveit-ros-move-group, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-visualization, moveit-servo, moveit-setup-assistant, moveit-simple-controller-manager, rclcpp, rclcpp-action, rosbot-description, rosbot-joy, rviz-common, rviz-default-plugins, rviz2, sensor-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-moveit";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_moveit/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "e7eb49613993e6e468d1da15c9c58c56bbaaaa5d75e67531a4548fb1cf9bc70c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ control-msgs geometry-msgs moveit-configs-utils moveit-core moveit-kinematics moveit-msgs moveit-planners moveit-ros-move-group moveit-ros-planning moveit-ros-planning-interface moveit-ros-visualization moveit-servo moveit-setup-assistant moveit-simple-controller-manager rclcpp rclcpp-action rosbot-description rosbot-joy rviz-common rviz-default-plugins rviz2 sensor-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An automatically generated package with all the configuration and launch files for using the rosbot_xl with the MoveIt Motion Planning Framework";
    license = with lib.licenses; [ bsd3 ];
  };
}
