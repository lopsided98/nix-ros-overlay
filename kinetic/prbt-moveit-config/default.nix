
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-visualization, moveit-ros-move-group, prbt-support, xacro, moveit-kinematics, catkin, moveit-simple-controller-manager, rviz, robot-state-publisher, roslaunch, joint-state-publisher, prbt-ikfast-manipulator-plugin, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-prbt-moveit-config";
  version = "0.4.9-r1";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_moveit_config/0.4.9-1.tar.gz;
    sha256 = "c90372ddff9e5808ec684ed6fb12f17e73adbdac3c8113000d54ec36416db756";
  };

  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group prbt-support moveit-ros-visualization xacro moveit-kinematics moveit-simple-controller-manager rviz robot-state-publisher joint-state-publisher prbt-ikfast-manipulator-plugin moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the prbt with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
