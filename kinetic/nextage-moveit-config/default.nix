
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, rostest, nextage-ros-bridge, robot-state-publisher, moveit-simple-controller-manager, moveit-ros-move-group, moveit-ros-planning-interface, catkin, moveit-ros, trac-ik-kinematics-plugin, moveit-planners, moveit-ros-visualization, hironx-moveit-config }:
buildRosPackage {
  pname = "ros-kinetic-nextage-moveit-config";
  version = "0.8.5-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_nextage-release/archive/release/kinetic/nextage_moveit_config/0.8.5-1.tar.gz";
    name = "0.8.5-1.tar.gz";
    sha256 = "d0368cb6f985bc16978709d4dd315e286b645d21894ee578a417df16fa62e1f1";
  };

  buildType = "catkin";
  buildInputs = [ nextage-ros-bridge hironx-moveit-config ];
  checkInputs = [ robot-state-publisher joint-state-publisher rostest ];
  propagatedBuildInputs = [ moveit-simple-controller-manager moveit-ros-move-group moveit-ros-planning-interface nextage-ros-bridge moveit-ros trac-ik-kinematics-plugin moveit-planners moveit-ros-visualization hironx-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the NextageOpen with the MoveIt Motion Planning Framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
