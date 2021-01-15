
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, geometry-msgs, joy-teleop, moveit-msgs, moveit-resources-panda-moveit-config, moveit-ros-planning-interface, rosparam-shortcuts, rostest, sensor-msgs, spacenav-node, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-moveit-servo";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_servo/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "8646f04afa3a7a9fa72e19232c35336bfcaae99cf28023643d67dc0ed67b32c9";
  };

  buildType = "catkin";
  checkInputs = [ moveit-resources-panda-moveit-config rostest ];
  propagatedBuildInputs = [ control-msgs geometry-msgs joy-teleop moveit-msgs moveit-ros-planning-interface rosparam-shortcuts sensor-msgs spacenav-node std-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides real-time manipulator Cartesian and joint servoing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
