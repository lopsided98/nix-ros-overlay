
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-configs-utils, moveit-kinematics, moveit-msgs, moveit-planners, moveit-ros-move-group, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-visualization, moveit-servo, moveit-setup-assistant, moveit-simple-controller-manager, rclcpp, rosbot-description, rosbot-joy, rviz-common, rviz-default-plugins, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-moveit";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_moveit/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "21cee9563166bb63b2edeba0ed19c6aad10b544f307aa3c917310f9ea48aeb72";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ moveit-configs-utils moveit-kinematics moveit-msgs moveit-planners moveit-ros-move-group moveit-ros-planning moveit-ros-planning-interface moveit-ros-visualization moveit-servo moveit-setup-assistant moveit-simple-controller-manager rclcpp rosbot-description rosbot-joy rviz-common rviz-default-plugins rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An automatically generated package with all the configuration and launch files for using the rosbot_xl with the MoveIt Motion Planning Framework";
    license = with lib.licenses; [ bsd3 ];
  };
}
