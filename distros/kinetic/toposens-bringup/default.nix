
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, rqt-reconfigure, rviz, socketcan-bridge, toposens-description, toposens-driver, toposens-markers, toposens-pointcloud, turtlebot3-bringup, turtlebot3-teleop, xacro }:
buildRosPackage {
  pname = "ros-kinetic-toposens-bringup";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_bringup/2.1.1-1";
    name = "archive.tar.gz";
    sha256 = "0796fb4f42ece88a3dd0647c73251f088ab912687969f2fef13d742968dda5ed";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rqt-reconfigure rviz socketcan-bridge toposens-description toposens-driver toposens-markers toposens-pointcloud turtlebot3-bringup turtlebot3-teleop xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files for bringup and demos of toposens package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
