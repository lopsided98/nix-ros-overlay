
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, rqt-gui, rqt-reconfigure, rviz, socketcan-bridge, toposens-description, toposens-driver, toposens-echo-driver, toposens-markers, toposens-pointcloud, turtlebot3-bringup, turtlebot3-teleop, xacro }:
buildRosPackage {
  pname = "ros-noetic-toposens-bringup";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/-/archive/release/noetic/toposens_bringup/2.3.2-2/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "54e7e3baf139f4996c2cc12e83f73b7a1d769d4e5bd25ccb75296b2b14a84f92";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rqt-gui rqt-reconfigure rviz socketcan-bridge toposens-description toposens-driver toposens-echo-driver toposens-markers toposens-pointcloud turtlebot3-bringup turtlebot3-teleop xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files for bringup and demos of toposens package.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
