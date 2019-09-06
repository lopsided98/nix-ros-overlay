
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, roscpp, turtlebot3-bringup, catkin }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-slam";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/turtlebot3_slam/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "7ed342a112c12a7626f3930148605bd50b75c6d1ab0e71e7d5a91d19649fbcc7";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs roscpp turtlebot3-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The turtlebot3_slam package provides roslaunch scripts for starting the SLAM'';
    license = with lib.licenses; [ asl20 ];
  };
}
