
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, hri-msgs, rospy, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-pyhri";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/pyhri-release/archive/release/noetic/pyhri/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "201093d8671a7a4eadf31b2677dcfc20e11b9790c8acff621783e6cb74ccd302";
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
