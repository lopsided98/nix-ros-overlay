
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, rqt-gui, rqt-reconfigure, rviz, socketcan-bridge, toposens-description, toposens-driver, toposens-markers, toposens-pointcloud, turtlebot3-bringup, turtlebot3-teleop, xacro }:
buildRosPackage {
  pname = "ros-noetic-toposens-bringup";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/noetic/toposens_bringup/2.2.0-1";
    name = "archive.tar.gz";
    sha256 = "b7011315a2d70769b2a487d01ce960436b3bdbc78f5046a8427d8c5d4f72dcdf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rqt-gui rqt-reconfigure rviz socketcan-bridge toposens-description toposens-driver toposens-markers toposens-pointcloud turtlebot3-bringup turtlebot3-teleop xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files for bringup and demos of toposens package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
