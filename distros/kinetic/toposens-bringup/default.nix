
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, rqt-reconfigure, rviz, socketcan-bridge, toposens-description, toposens-driver, toposens-markers, toposens-pointcloud, turtlebot3-bringup, turtlebot3-teleop, xacro }:
buildRosPackage {
  pname = "ros-kinetic-toposens-bringup";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_bringup/2.1.0-1";
    name = "archive.tar.gz";
    sha256 = "8c4b5e2c9388accb1f26364fd706db0ece583098e4460025b8d78a2957c74e03";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rqt-reconfigure rviz socketcan-bridge toposens-description toposens-driver toposens-markers toposens-pointcloud turtlebot3-bringup turtlebot3-teleop xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files for bringup and demos of toposens package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
