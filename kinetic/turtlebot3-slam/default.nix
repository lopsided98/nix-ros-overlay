
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, roscpp, turtlebot3-bringup, catkin }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-slam";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/turtlebot3_slam/1.2.0-0.tar.gz;
    sha256 = "922841a98e54a80dddc10284a138aa7bd26c8b55e75d55a093be04a6c32775bd";
  };

  buildInputs = [ sensor-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs roscpp turtlebot3-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The turtlebot3_slam package provides roslaunch scripts for starting the SLAM'';
    #license = lib.licenses.Apache 2.0;
  };
}
