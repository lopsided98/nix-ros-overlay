
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, joint-state-publisher-gui, moveit-fake-controller-manager, moveit-planners-ompl, moveit-ros-benchmarks, moveit-ros-move-group, moveit-ros-visualization, moveit-ros-warehouse, moveit-setup-assistant, moveit-simple-controller-manager, robot-state-publisher, roslaunch, rviz, tf2-ros, trac-ik-kinematics-plugin, ur-description, warehouse-ros-mongo, xacro }:
buildRosPackage {
  pname = "ros-noetic-ur3-moveit-config";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/noetic/ur3_moveit_config/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "09f4ac4b58b6d8b5a9527b0ffe3b169df6a662f7c9c70505ae8482c0f05ccc3a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui moveit-fake-controller-manager moveit-planners-ompl moveit-ros-benchmarks moveit-ros-move-group moveit-ros-visualization moveit-ros-warehouse moveit-setup-assistant moveit-simple-controller-manager robot-state-publisher rviz tf2-ros trac-ik-kinematics-plugin ur-description warehouse-ros-mongo xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the ur3 with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
