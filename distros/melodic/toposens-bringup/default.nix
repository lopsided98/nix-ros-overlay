
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, rqt-gui, rqt-reconfigure, rviz, socketcan-bridge, toposens-description, toposens-driver, toposens-echo-driver, toposens-markers, toposens-pointcloud, turtlebot3-bringup, turtlebot3-teleop, xacro }:
buildRosPackage {
  pname = "ros-melodic-toposens-bringup";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/-/archive/release/melodic/toposens_bringup/2.3.2-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "5d2ea47ec1ad889f9dcad5cc08742a0c03e4863eb9f5c2e7cc7ba9ad1a779bc4";
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
