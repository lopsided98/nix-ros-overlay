
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-simple-controller-manager, prbt-hardware-support, prbt-ikfast-manipulator-plugin, prbt-support, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-melodic-prbt-moveit-config";
  version = "0.5.18-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_moveit_config/0.5.18-1.tar.gz";
    name = "0.5.18-1.tar.gz";
    sha256 = "281fcbf4c34206c1708c3ab0acad9714ffe2529bc254da378fc6c1349bbef950";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-simple-controller-manager prbt-hardware-support prbt-ikfast-manipulator-plugin prbt-support robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the prbt with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
