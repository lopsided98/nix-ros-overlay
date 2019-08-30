
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, amcl, catkin, move-base, turtlebot3-bringup }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-navigation";
  version = "1.2.2-r1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/turtlebot3_navigation/1.2.2-1.tar.gz;
    sha256 = "f2e7db807baf99bf7fc327d56fecaf1f6ba3695f2e9319d838b4912792b96896";
  };

  propagatedBuildInputs = [ amcl map-server turtlebot3-bringup move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The turtlebot3_navigation provides roslaunch scripts for starting the navigation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
