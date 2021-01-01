
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, map-server, move-base, turtlebot3-bringup }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-navigation";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/turtlebot3_navigation/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "d6c73d57982eea11af7089ec24128f15166afb8da6d0be88f5e107e6548f7af1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ amcl map-server move-base turtlebot3-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The turtlebot3_navigation provides roslaunch scripts for starting the navigation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
