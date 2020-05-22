
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-simple-controller-manager, prbt-hardware-support, prbt-ikfast-manipulator-plugin, prbt-support, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-melodic-prbt-moveit-config";
  version = "0.5.16-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_moveit_config/0.5.16-1.tar.gz";
    name = "0.5.16-1.tar.gz";
    sha256 = "06a85c2f9d043ea9a05d1797d93c5dc12c6c69978333dba6589dbe6ebda9a20f";
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
