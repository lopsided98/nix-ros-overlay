
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pilz-industrial-motion-testutils, eigen-conversions, pluginlib, pilz-testutils, prbt-support, rosunit, tf2, rostest, cmake-modules, tf2-geometry-msgs, orocos-kdl, moveit-core, moveit-ros-planning-interface, catkin, pilz-extensions, roscpp, moveit-ros-planning, prbt-pg70-support, kdl-conversions, moveit-ros-move-group, code-coverage, tf2-eigen, moveit-msgs, prbt-moveit-config, pilz-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-trajectory-generation";
  version = "0.4.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_trajectory_generation/0.4.10-1.tar.gz";
    name = "0.4.10-1.tar.gz";
    sha256 = "2ed5cdd473ec158b703757562794c8981cdf6a44c290f776d6307a6b807dc42c";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core orocos-kdl eigen-conversions moveit-ros-move-group pluginlib moveit-ros-planning-interface pilz-extensions roscpp moveit-ros-planning tf2-eigen tf2-geometry-msgs moveit-msgs tf2 pilz-msgs kdl-conversions ];
  checkInputs = [ pilz-industrial-motion-testutils pilz-testutils code-coverage cmake-modules prbt-support rosunit prbt-moveit-config prbt-pg70-support rostest ];
  propagatedBuildInputs = [ moveit-core orocos-kdl eigen-conversions moveit-ros-move-group pluginlib moveit-ros-planning-interface pilz-extensions roscpp moveit-ros-planning tf2-eigen tf2-geometry-msgs moveit-msgs tf2 pilz-msgs kdl-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_trajectory_generation package containing the MoveIt! plugin pilz_command_planner.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
