
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, hri-msgs, rospy, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-pyhri";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/pyhri-release/archive/release/noetic/pyhri/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "6093ed779125728e862a74b56bf815e493edec47f8d8a79e90a7cbb6a35b6db7";
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
