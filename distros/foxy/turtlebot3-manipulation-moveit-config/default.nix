
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, moveit-kinematics, moveit-planners, moveit-ros-move-group, moveit-ros-visualization, moveit-ros-warehouse, moveit-simple-controller-manager, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, srdfdom, tf2-ros, turtlebot3-manipulation-description, warehouse-ros-mongo, xacro }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-manipulation-moveit-config";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/foxy/turtlebot3_manipulation_moveit_config/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "5d4011d3ed3351811bd55aa727f1b5cca1280e31845c988ea56cc7636d85b696";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui moveit-kinematics moveit-planners moveit-ros-move-group moveit-ros-visualization moveit-ros-warehouse moveit-simple-controller-manager robot-state-publisher rviz-common rviz-default-plugins rviz2 srdfdom tf2-ros turtlebot3-manipulation-description warehouse-ros-mongo xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the turtlebot3_manipulation with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
