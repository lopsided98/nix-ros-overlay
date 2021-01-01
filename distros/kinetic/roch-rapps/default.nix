
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-image-transport, nodelet, robot-pose-publisher, roch-bringup, roch-follower, roch-navigation, roch-teleop, tf, topic-tools, warehouse-ros, world-canvas-server }:
buildRosPackage {
  pname = "ros-kinetic-roch-rapps";
  version = "2.0.12";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch-release/archive/release/kinetic/roch_rapps/2.0.12-0.tar.gz";
    name = "2.0.12-0.tar.gz";
    sha256 = "5294102b8ff61174379dca8f19f31c86e9497f189eff28c47c28c7496c04e90a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ compressed-image-transport nodelet robot-pose-publisher roch-bringup roch-follower roch-navigation roch-teleop tf topic-tools warehouse-ros world-canvas-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roch_rapps package for set of 'app manager' apps definition'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
