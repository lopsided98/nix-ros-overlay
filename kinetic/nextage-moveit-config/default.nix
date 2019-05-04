
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trac-ik-kinematics-plugin, moveit-ros-visualization, moveit-ros-move-group, catkin, hironx-moveit-config, moveit-ros, rostest, moveit-ros-planning-interface, moveit-simple-controller-manager, joint-state-publisher, robot-state-publisher, moveit-planners, nextage-ros-bridge }:
buildRosPackage {
  pname = "ros-kinetic-nextage-moveit-config";
  version = "0.8.4";

  src = fetchurl {
    url = https://github.com/tork-a/rtmros_nextage-release/archive/release/kinetic/nextage_moveit_config/0.8.4-0.tar.gz;
    sha256 = "a53f376904d833d8bc62e24aaf59f838bd5ea788d1c7e193bb5e4f50a3525def";
  };

  buildInputs = [ nextage-ros-bridge hironx-moveit-config ];
  checkInputs = [ rostest joint-state-publisher robot-state-publisher ];
  propagatedBuildInputs = [ moveit-ros-move-group trac-ik-kinematics-plugin nextage-ros-bridge moveit-ros-visualization hironx-moveit-config moveit-ros moveit-simple-controller-manager moveit-planners moveit-ros-planning-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the NextageOpen with the MoveIt Motion Planning Framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
