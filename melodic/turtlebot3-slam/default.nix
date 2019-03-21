
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, turtlebot3-bringup, roscpp }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-slam";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/turtlebot3_slam/1.2.0-0.tar.gz;
    sha256 = "dd2f8644cf9019753493e5e080b06f28b097bd90e02669b859e708291ffcdb79";
  };

  propagatedBuildInputs = [ sensor-msgs roscpp turtlebot3-bringup ];
  nativeBuildInputs = [ sensor-msgs roscpp catkin ];

  meta = {
    description = ''The turtlebot3_slam package provides roslaunch scripts for starting the SLAM'';
    #license = lib.licenses.Apache 2.0;
  };
}
