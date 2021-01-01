
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, map-server, move-base, turtlebot3-bringup }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-navigation";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/turtlebot3_navigation/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "8907d803336ab5653fd75c0e54436c8b36989920f064dd21ccc44e5749ac21b4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ amcl map-server move-base turtlebot3-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The turtlebot3_navigation provides roslaunch scripts for starting the navigation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
