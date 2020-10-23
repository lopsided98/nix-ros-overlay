
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, sensor-msgs, turtlebot3-bringup }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-slam";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/turtlebot3_slam/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "b92faf885e88349c98872fab244687c2f50f4de8f67040d9195d909e28db0910";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp sensor-msgs turtlebot3-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The turtlebot3_slam package provides roslaunch scripts for starting the SLAM'';
    license = with lib.licenses; [ asl20 ];
  };
}
