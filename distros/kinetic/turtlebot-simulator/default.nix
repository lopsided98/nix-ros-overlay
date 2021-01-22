
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtlebot-gazebo, turtlebot-stage, turtlebot-stdr }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-simulator";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_simulator-release/archive/release/kinetic/turtlebot_simulator/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "85560fb43bae17cb301da06c4c1cb3624f4752d366e75105e741c32f6ece7619";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ turtlebot-gazebo turtlebot-stage turtlebot-stdr ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkin metapackage for the turtlebot_simulator stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
