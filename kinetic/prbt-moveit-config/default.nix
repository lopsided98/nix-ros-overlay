
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, joint-state-publisher, xacro, robot-state-publisher, moveit-ros-move-group, moveit-simple-controller-manager, catkin, rviz, prbt-ikfast-manipulator-plugin, moveit-ros-visualization, moveit-kinematics, prbt-support, roslaunch, moveit-fake-controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-prbt-moveit-config";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_moveit_config/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "a1d8773530798179b6efaf8a29a48919bafef364f18ae46008167c04e5fe2170";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ moveit-planners-ompl joint-state-publisher xacro robot-state-publisher moveit-ros-move-group moveit-simple-controller-manager rviz prbt-ikfast-manipulator-plugin moveit-ros-visualization moveit-kinematics prbt-support moveit-fake-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the prbt with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
