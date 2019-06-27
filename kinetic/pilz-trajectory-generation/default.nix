
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, prbt-moveit-config, pilz-msgs, pilz-extensions, pilz-testutils, prbt-pg70-support, pilz-industrial-motion-testutils, moveit-core, eigen-conversions, moveit-ros-planning-interface, kdl-conversions, panda-moveit-config, orocos-kdl, tf2-geometry-msgs, prbt-support, catkin, moveit-msgs, roscpp, moveit-ros-move-group, pluginlib, cmake-modules, tf2, rostest, abb-irb2400-moveit-config, tf2-eigen, code-coverage, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-pilz-trajectory-generation";
  version = "0.3.7";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_trajectory_generation/0.3.7-0.tar.gz;
    sha256 = "e9e51e891325c5d2335c033740309026e4e3837f4f03d5711093af1c178e4a0a";
  };

  buildInputs = [ moveit-ros-planning kdl-conversions moveit-ros-move-group orocos-kdl pluginlib tf2-geometry-msgs pilz-extensions roscpp tf2 moveit-core tf2-eigen moveit-msgs eigen-conversions pilz-msgs moveit-ros-planning-interface ];
  checkInputs = [ panda-moveit-config prbt-support cmake-modules prbt-moveit-config pilz-testutils prbt-pg70-support rostest pilz-industrial-motion-testutils abb-irb2400-moveit-config code-coverage rosunit ];
  propagatedBuildInputs = [ moveit-ros-planning kdl-conversions moveit-ros-move-group orocos-kdl pluginlib tf2-geometry-msgs pilz-extensions roscpp tf2 moveit-core tf2-eigen moveit-msgs eigen-conversions pilz-msgs moveit-ros-planning-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_trajectory_generation package containing the MoveIt! plugin pilz_command_planner.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
