
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, joint-state-publisher, prbt-hardware-support, xacro, robot-state-publisher, moveit-ros-move-group, moveit-simple-controller-manager, catkin, rviz, prbt-ikfast-manipulator-plugin, moveit-ros-visualization, moveit-kinematics, prbt-support, roslaunch, moveit-fake-controller-manager }:
buildRosPackage {
  pname = "ros-melodic-prbt-moveit-config";
  version = "0.5.13-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_moveit_config/0.5.13-1.tar.gz";
    name = "0.5.13-1.tar.gz";
    sha256 = "1a3ce66aeaa0cec88057ee254278cfdf5729b2f4afc651141939596d0beab868";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ moveit-planners-ompl joint-state-publisher xacro prbt-hardware-support robot-state-publisher moveit-ros-move-group moveit-simple-controller-manager rviz prbt-ikfast-manipulator-plugin moveit-ros-visualization moveit-kinematics prbt-support moveit-fake-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the prbt with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
