
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, moveit-kinematics, moveit-planners, moveit-ros-move-group, moveit-ros-visualization, moveit-ros-warehouse, moveit-simple-controller-manager, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, srdfdom, tf2-ros, turtlebot3-manipulation-description, xacro }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-manipulation-moveit-config";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/humble/turtlebot3_manipulation_moveit_config/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "1fbc8b1020b01025599b4a9a4cd79b7447b87f116c29b5715cc8891da5d079da";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui moveit-kinematics moveit-planners moveit-ros-move-group moveit-ros-visualization moveit-ros-warehouse moveit-simple-controller-manager robot-state-publisher rviz-common rviz-default-plugins rviz2 srdfdom tf2-ros turtlebot3-manipulation-description xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An automatically generated package with all the configuration and launch files for using the turtlebot3_manipulation with the MoveIt Motion Planning Framework";
    license = with lib.licenses; [ asl20 ];
  };
}
