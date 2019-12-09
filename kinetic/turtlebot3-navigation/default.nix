
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot3-bringup, map-server, catkin, move-base, amcl }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-navigation";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/turtlebot3_navigation/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "04aa16b150c741f0e0cf28653e762f904616c635086610fa1dc5f0c743f01769";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ map-server amcl turtlebot3-bringup move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The turtlebot3_navigation provides roslaunch scripts for starting the navigation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
