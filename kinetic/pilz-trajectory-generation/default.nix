
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, prbt-moveit-config, pilz-msgs, prbt-ikfast-manipulator-plugin, pilz-extensions, pilz-testutils, prbt-pg70-support, pilz-industrial-motion-testutils, moveit-core, message-runtime, eigen-conversions, moveit-ros-planning-interface, panda-moveit-config, orocos-kdl, tf2-geometry-msgs, prbt-support, catkin, moveit-commander, moveit-msgs, roscpp, moveit-ros-move-group, pluginlib, cmake-modules, tf2, rostest, abb-irb2400-moveit-config, tf2-eigen, code-coverage, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-pilz-trajectory-generation";
  version = "0.3.6";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_trajectory_generation/0.3.6-0.tar.gz;
    sha256 = "08ebb11d85fb3ba396c323e59ed1ad3cef112aae967f25b855cebe3380cc33be";
  };

  buildInputs = [ moveit-ros-planning moveit-ros-move-group pluginlib tf2-geometry-msgs orocos-kdl pilz-extensions pilz-testutils roscpp tf2 moveit-core tf2-eigen moveit-msgs eigen-conversions pilz-msgs moveit-ros-planning-interface ];
  checkInputs = [ panda-moveit-config cmake-modules prbt-moveit-config prbt-support prbt-pg70-support rostest pilz-industrial-motion-testutils abb-irb2400-moveit-config code-coverage rosunit ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-move-group orocos-kdl tf2-geometry-msgs pilz-extensions roscpp tf2 moveit-core message-runtime moveit-commander moveit-msgs pilz-msgs moveit-ros-planning-interface prbt-ikfast-manipulator-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_trajectory_generation package containing the MoveIt! plugin pilz_command_planner.'';
    #license = lib.licenses.LGPLv3;
  };
}
