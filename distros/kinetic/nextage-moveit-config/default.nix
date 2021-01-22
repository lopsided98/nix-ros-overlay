
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hironx-moveit-config, joint-state-publisher, moveit-planners, moveit-ros, moveit-ros-move-group, moveit-ros-planning-interface, moveit-ros-visualization, moveit-simple-controller-manager, nextage-ros-bridge, robot-state-publisher, rostest, trac-ik-kinematics-plugin }:
buildRosPackage {
  pname = "ros-kinetic-nextage-moveit-config";
  version = "0.8.5-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_nextage-release/archive/release/kinetic/nextage_moveit_config/0.8.5-1.tar.gz";
    name = "0.8.5-1.tar.gz";
    sha256 = "d0368cb6f985bc16978709d4dd315e286b645d21894ee578a417df16fa62e1f1";
  };

  buildType = "catkin";
  checkInputs = [ joint-state-publisher robot-state-publisher rostest ];
  propagatedBuildInputs = [ hironx-moveit-config moveit-planners moveit-ros moveit-ros-move-group moveit-ros-planning-interface moveit-ros-visualization moveit-simple-controller-manager nextage-ros-bridge trac-ik-kinematics-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the NextageOpen with the MoveIt Motion Planning Framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
