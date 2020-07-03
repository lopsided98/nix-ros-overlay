
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hironx-moveit-config, joint-state-publisher, moveit-planners, moveit-ros, moveit-ros-move-group, moveit-ros-planning-interface, moveit-ros-visualization, moveit-simple-controller-manager, nextage-ros-bridge, robot-state-publisher, rostest, trac-ik-kinematics-plugin }:
buildRosPackage {
  pname = "ros-melodic-nextage-moveit-config";
  version = "0.8.6-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_nextage-release/archive/release/melodic/nextage_moveit_config/0.8.6-2.tar.gz";
    name = "0.8.6-2.tar.gz";
    sha256 = "5a07e0b4721870aeff7a976dc04db078aad81a5faa0d69dad7959ebf59bf621b";
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
