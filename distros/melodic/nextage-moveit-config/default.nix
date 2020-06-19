
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hironx-moveit-config, joint-state-publisher, moveit-planners, moveit-ros, moveit-ros-move-group, moveit-ros-planning-interface, moveit-ros-visualization, moveit-simple-controller-manager, nextage-ros-bridge, robot-state-publisher, rostest, trac-ik-kinematics-plugin }:
buildRosPackage {
  pname = "ros-melodic-nextage-moveit-config";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_nextage-release/archive/release/melodic/nextage_moveit_config/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "1df0434fc36ad651c69d1c94b92d1698e82c9e7fd4201c054ff1bd3fabb21bad";
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
