
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-visualization, moveit-ros-move-group, prbt-support, xacro, moveit-kinematics, catkin, moveit-simple-controller-manager, rviz, robot-state-publisher, roslaunch, joint-state-publisher, prbt-ikfast-manipulator-plugin, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-prbt-moveit-config";
  version = "0.4.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_moveit_config/0.4.10-1.tar.gz";
    name = "0.4.10-1.tar.gz";
    sha256 = "868d2750cea21fc3f7f57d968dbc9a67226add34b513c0e1da939ab9cac9c38f";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group prbt-support moveit-ros-visualization xacro moveit-kinematics moveit-simple-controller-manager rviz robot-state-publisher joint-state-publisher prbt-ikfast-manipulator-plugin moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the prbt with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
