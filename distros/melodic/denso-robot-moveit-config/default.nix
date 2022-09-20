
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-simple-controller-manager, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-moveit-config";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_moveit_config/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "399a482bbaf6ef0aa129e0607ebec00e9167e0b9230f0b94d271fdbae2fea7d6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-state-publisher moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-simple-controller-manager robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the DENSO robots with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
