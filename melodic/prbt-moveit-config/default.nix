
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-visualization, moveit-ros-move-group, prbt-support, xacro, moveit-kinematics, catkin, moveit-simple-controller-manager, rviz, robot-state-publisher, roslaunch, joint-state-publisher, prbt-ikfast-manipulator-plugin, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-melodic-prbt-moveit-config";
  version = "0.5.3-r1";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_moveit_config/0.5.3-1.tar.gz;
    sha256 = "4a2c6a45dc6e7db035c27acdf1ed71a35453b7ae199d4e7e2e965791eeb6f78f";
  };

  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group prbt-support moveit-ros-visualization xacro moveit-kinematics moveit-simple-controller-manager rviz robot-state-publisher joint-state-publisher prbt-ikfast-manipulator-plugin moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the prbt with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
