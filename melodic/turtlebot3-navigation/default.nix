
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, amcl, catkin, move-base, turtlebot3-bringup }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-navigation";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/turtlebot3_navigation/1.2.0-0.tar.gz;
    sha256 = "9599bcd399b7a62899e234f85e9ab1394646211531486ae7510d040b3fd6c890";
  };

  propagatedBuildInputs = [ amcl map-server turtlebot3-bringup move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The turtlebot3_navigation provides roslaunch scripts for starting the navigation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
