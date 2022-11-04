
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, hri-msgs, rospy, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-pyhri";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/pyhri-release/archive/release/noetic/pyhri/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "f7a5250dded3710394e8406ab8e69076803e25489fa9ba3443c1ac2517e679fe";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge geometry-msgs hri-msgs rospy sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python wrapper library around the ROS4HRI ROS topics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
