
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-core, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-planning, moveit-ros-visualization, moveit-simple-controller-manager, pluginlib, prbt-hardware-support, prbt-ikfast-manipulator-plugin, prbt-support, robot-state-publisher, roscpp, roslaunch, rostest, rosunit, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-prbt-moveit-config";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/noetic/prbt_moveit_config/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "430c360df9a9c17698dd9c114f73ff1b4aa200027bbd8f01cbf6211b0b41d13a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ moveit-core moveit-ros-planning pluginlib roscpp roslaunch rostest rosunit ];
  propagatedBuildInputs = [ joint-state-publisher moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-simple-controller-manager prbt-hardware-support prbt-ikfast-manipulator-plugin prbt-support robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the prbt with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
