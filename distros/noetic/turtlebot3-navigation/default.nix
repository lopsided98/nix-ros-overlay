
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, map-server, move-base, turtlebot3-bringup }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-navigation";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/noetic/turtlebot3_navigation/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "5ec6cd07d0b55b7eac47c60b3b27751eb39b1773e0242daeb05e7822995a53a0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ amcl map-server move-base turtlebot3-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The turtlebot3_navigation provides roslaunch scripts for starting the navigation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
