
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, moveit-kinematics, moveit-planners, moveit-ros-move-group, moveit-ros-visualization, moveit-ros-warehouse, moveit-simple-controller-manager, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, srdfdom, tf2-ros, turtlebot3-manipulation-description, xacro }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-manipulation-moveit-config";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/jazzy/turtlebot3_manipulation_moveit_config/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "191098552f6f1edc97e6df97b7a1bdbfa10fd02a5d057d836202242a72a4fa2e";
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
