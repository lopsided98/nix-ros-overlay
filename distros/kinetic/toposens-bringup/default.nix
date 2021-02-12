
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, rqt-gui, rqt-reconfigure, rviz, socketcan-bridge, toposens-description, toposens-driver, toposens-markers, toposens-pointcloud, turtlebot3-bringup, turtlebot3-teleop, xacro }:
buildRosPackage {
  pname = "ros-kinetic-toposens-bringup";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_bringup/2.2.0-3";
    name = "archive.tar.gz";
    sha256 = "ccfb1521767d3a5db2d2e90167eac953f5b4a359015341f6cbd85a69808b6687";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rqt-gui rqt-reconfigure rviz socketcan-bridge toposens-description toposens-driver toposens-markers toposens-pointcloud turtlebot3-bringup turtlebot3-teleop xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files for bringup and demos of toposens package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
