
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, geometry-msgs, joy-teleop, moveit-msgs, moveit-resources, moveit-ros-planning-interface, rosparam-shortcuts, rostest, sensor-msgs, spacenav-node, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-moveit-servo";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_servo/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "33869a8bc86e46a6cde13464e608d62782b2a3683463848005776affde5514fd";
  };

  buildType = "catkin";
  checkInputs = [ moveit-resources rostest ];
  propagatedBuildInputs = [ control-msgs geometry-msgs joy-teleop moveit-msgs moveit-ros-planning-interface rosparam-shortcuts sensor-msgs spacenav-node std-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides real-time manipulator Cartesian and joint servoing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
