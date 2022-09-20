
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, code-coverage, eigen-conversions, kdl-conversions, moveit-core, moveit-msgs, moveit-ros-move-group, moveit-ros-planning, moveit-ros-planning-interface, orocos-kdl, pilz-extensions, pilz-industrial-motion-testutils, pilz-msgs, pilz-testutils, pluginlib, prbt-moveit-config, prbt-pg70-support, prbt-support, roscpp, rostest, rosunit, tf2, tf2-eigen, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-trajectory-generation";
  version = "0.4.14-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_trajectory_generation/0.4.14-1.tar.gz";
    name = "0.4.14-1.tar.gz";
    sha256 = "55c630f7cee97d09abb77f22ef40b4aebdebcccf56fa6bcc93363bbc9bfc4c97";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ cmake-modules code-coverage pilz-industrial-motion-testutils pilz-testutils prbt-moveit-config prbt-pg70-support prbt-support rostest rosunit ];
  propagatedBuildInputs = [ eigen-conversions kdl-conversions moveit-core moveit-msgs moveit-ros-move-group moveit-ros-planning moveit-ros-planning-interface orocos-kdl pilz-extensions pilz-msgs pluginlib roscpp tf2 tf2-eigen tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_trajectory_generation package containing the MoveIt! plugin pilz_command_planner.'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
