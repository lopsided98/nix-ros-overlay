
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, prbt-moveit-config, pilz-msgs, prbt-ikfast-manipulator-plugin, pilz-extensions, pilz-testutils, prbt-pg70-support, pilz-industrial-motion-testutils, moveit-core, message-runtime, eigen-conversions, moveit-ros-planning-interface, kdl-conversions, orocos-kdl, prbt-support, tf2-geometry-msgs, catkin, moveit-commander, moveit-msgs, roscpp, moveit-ros-move-group, cmake-modules, pluginlib, rostest, tf2, tf2-eigen, code-coverage, rosunit }:
buildRosPackage {
  pname = "ros-melodic-pilz-trajectory-generation";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_trajectory_generation/0.4.2-0.tar.gz;
    sha256 = "936e4bd50609f103ea922cde588a32fd0b1ea5e2eaaf685338d619d9551a61db";
  };

  checkInputs = [ rostest pilz-industrial-motion-testutils cmake-modules prbt-moveit-config prbt-support code-coverage prbt-pg70-support rosunit ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-move-group orocos-kdl tf2-geometry-msgs pilz-extensions roscpp tf2 moveit-core message-runtime moveit-commander moveit-msgs pilz-msgs moveit-ros-planning-interface prbt-ikfast-manipulator-plugin ];
  nativeBuildInputs = [ moveit-ros-planning kdl-conversions moveit-ros-move-group pluginlib tf2-geometry-msgs orocos-kdl pilz-extensions pilz-testutils catkin roscpp tf2 moveit-core tf2-eigen moveit-msgs eigen-conversions pilz-msgs moveit-ros-planning-interface ];

  meta = {
    description = ''The pilz_trajectory_generation package containing the MoveIt! plugin pilz_command_planner.'';
    #license = lib.licenses.LGPLv3;
  };
}
