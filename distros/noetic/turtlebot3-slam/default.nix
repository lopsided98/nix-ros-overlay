
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, sensor-msgs, turtlebot3-bringup }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-slam";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/noetic/turtlebot3_slam/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "bf433551140aa616ff40472fa81c8854fd50a326ed25f6f70e4b037e85fb8dfb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp sensor-msgs turtlebot3-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The turtlebot3_slam package provides roslaunch scripts for starting the SLAM'';
    license = with lib.licenses; [ asl20 ];
  };
}
