
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, prbt-moveit-config, pilz-msgs, pilz-extensions, pilz-testutils, prbt-pg70-support, pilz-industrial-motion-testutils, moveit-core, eigen-conversions, moveit-ros-planning-interface, kdl-conversions, orocos-kdl, tf2-geometry-msgs, prbt-support, catkin, moveit-msgs, roscpp, moveit-ros-move-group, pluginlib, cmake-modules, tf2, rostest, tf2-eigen, code-coverage, rosunit }:
buildRosPackage {
  pname = "ros-melodic-pilz-trajectory-generation";
  version = "0.4.3";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_trajectory_generation/0.4.3-0.tar.gz;
    sha256 = "dc396f21535578ae455a1800bac7d18d1f0e8fb0dfa9cdeb7b2079203913bfc9";
  };

  buildInputs = [ moveit-ros-planning kdl-conversions moveit-ros-move-group orocos-kdl pluginlib tf2-geometry-msgs pilz-extensions roscpp tf2 moveit-core tf2-eigen moveit-msgs eigen-conversions pilz-msgs moveit-ros-planning-interface ];
  checkInputs = [ prbt-support cmake-modules prbt-moveit-config pilz-testutils prbt-pg70-support rostest pilz-industrial-motion-testutils code-coverage rosunit ];
  propagatedBuildInputs = [ moveit-ros-planning kdl-conversions moveit-ros-move-group orocos-kdl pluginlib tf2-geometry-msgs pilz-extensions roscpp tf2 moveit-core tf2-eigen moveit-msgs eigen-conversions pilz-msgs moveit-ros-planning-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_trajectory_generation package containing the MoveIt! plugin pilz_command_planner.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
