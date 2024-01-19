
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, hri-msgs, rospy, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-pyhri";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/pyhri-release/archive/release/noetic/pyhri/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "22e6ae0755441d2c3faf997fd3d4c3208aac1054c978c227480eb9c9cc55daa3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs hri-msgs rospy sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python wrapper library around the ROS4HRI ROS topics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
