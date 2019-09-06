
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, prbt-moveit-config, pilz-msgs, pilz-extensions, pilz-testutils, prbt-pg70-support, pilz-industrial-motion-testutils, moveit-core, eigen-conversions, moveit-ros-planning-interface, kdl-conversions, orocos-kdl, tf2-geometry-msgs, prbt-support, catkin, moveit-msgs, roscpp, clang, pluginlib, moveit-ros-move-group, cmake-modules, tf2, rostest, tf2-eigen, code-coverage, rosunit }:
buildRosPackage {
  pname = "ros-melodic-pilz-trajectory-generation";
  version = "0.4.6-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_trajectory_generation/0.4.6-1.tar.gz";
    name = "0.4.6-1.tar.gz";
    sha256 = "71a17515b8c5ac67cc1cacbcc4cac22f1a985381ba1153c2ffbb3bc9a1526a07";
  };

  buildType = "catkin";
  buildInputs = [ moveit-ros-planning kdl-conversions clang pluginlib tf2-geometry-msgs orocos-kdl pilz-extensions moveit-ros-move-group roscpp tf2 moveit-core tf2-eigen moveit-msgs eigen-conversions pilz-msgs moveit-ros-planning-interface ];
  checkInputs = [ prbt-support cmake-modules prbt-moveit-config pilz-testutils prbt-pg70-support rostest pilz-industrial-motion-testutils code-coverage rosunit ];
  propagatedBuildInputs = [ kdl-conversions moveit-ros-planning moveit-ros-move-group orocos-kdl tf2-geometry-msgs pluginlib pilz-extensions roscpp tf2 moveit-core tf2-eigen moveit-msgs eigen-conversions pilz-msgs moveit-ros-planning-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_trajectory_generation package containing the MoveIt! plugin pilz_command_planner.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
