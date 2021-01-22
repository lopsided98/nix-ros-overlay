
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-irb2400-moveit-config, catkin, cmake-modules, code-coverage, eigen-conversions, kdl-conversions, moveit-core, moveit-msgs, moveit-ros-move-group, moveit-ros-planning, moveit-ros-planning-interface, orocos-kdl, panda-moveit-config, pilz-extensions, pilz-industrial-motion-testutils, pilz-msgs, pilz-testutils, pluginlib, prbt-moveit-config, prbt-pg70-support, prbt-support, roscpp, rostest, rosunit, tf2, tf2-eigen, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pilz-trajectory-generation";
  version = "0.3.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_trajectory_generation/0.3.10-1.tar.gz";
    name = "0.3.10-1.tar.gz";
    sha256 = "bc5f747041bf0602a84bd776966ad11a8d50aee7181be48bff2c762fe8219def";
  };

  buildType = "catkin";
  checkInputs = [ abb-irb2400-moveit-config cmake-modules code-coverage panda-moveit-config pilz-industrial-motion-testutils pilz-testutils prbt-moveit-config prbt-pg70-support prbt-support rostest rosunit ];
  propagatedBuildInputs = [ eigen-conversions kdl-conversions moveit-core moveit-msgs moveit-ros-move-group moveit-ros-planning moveit-ros-planning-interface orocos-kdl pilz-extensions pilz-msgs pluginlib roscpp tf2 tf2-eigen tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_trajectory_generation package containing the MoveIt! plugin pilz_command_planner.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
