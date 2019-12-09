
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pilz-industrial-motion-testutils, eigen-conversions, pluginlib, pilz-testutils, prbt-support, rosunit, tf2, rostest, cmake-modules, tf2-geometry-msgs, panda-moveit-config, orocos-kdl, moveit-core, moveit-ros-planning-interface, catkin, pilz-extensions, roscpp, moveit-ros-planning, prbt-pg70-support, kdl-conversions, moveit-ros-move-group, code-coverage, tf2-eigen, abb-irb2400-moveit-config, moveit-msgs, prbt-moveit-config, pilz-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pilz-trajectory-generation";
  version = "0.3.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_trajectory_generation/0.3.10-1.tar.gz";
    name = "0.3.10-1.tar.gz";
    sha256 = "bc5f747041bf0602a84bd776966ad11a8d50aee7181be48bff2c762fe8219def";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core orocos-kdl eigen-conversions moveit-ros-move-group pluginlib moveit-ros-planning-interface pilz-extensions roscpp moveit-ros-planning tf2-eigen tf2-geometry-msgs moveit-msgs tf2 pilz-msgs kdl-conversions ];
  checkInputs = [ panda-moveit-config pilz-industrial-motion-testutils pilz-testutils code-coverage cmake-modules prbt-support rosunit abb-irb2400-moveit-config prbt-moveit-config prbt-pg70-support rostest ];
  propagatedBuildInputs = [ moveit-core orocos-kdl eigen-conversions moveit-ros-move-group pluginlib moveit-ros-planning-interface pilz-extensions roscpp moveit-ros-planning tf2-eigen tf2-geometry-msgs moveit-msgs tf2 pilz-msgs kdl-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_trajectory_generation package containing the MoveIt! plugin pilz_command_planner.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
