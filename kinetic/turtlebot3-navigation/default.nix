
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, amcl, catkin, move-base, turtlebot3-bringup }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-navigation";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/turtlebot3_navigation/1.2.0-0.tar.gz;
    sha256 = "989b2af8d640a8c9efe2e24dcbe862fd745c87103f29da0392f1bf9d4a02f7f7";
  };

  propagatedBuildInputs = [ amcl map-server turtlebot3-bringup move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The turtlebot3_navigation provides roslaunch scripts for starting the navigation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
