
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, map-server, move-base, turtlebot3-bringup }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-navigation";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/turtlebot3_navigation/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "0274c0d048f4ee2f9b21b4f776022ad51b8837468b2464279d3ca3ea7b446028";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ amcl map-server move-base turtlebot3-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The turtlebot3_navigation provides roslaunch scripts for starting the navigation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
