
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, geometry-msgs, hri-msgs, rosconsole, roscpp, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-hri";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/libhri-release/archive/release/noetic/hri/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "b9585f9ef11a6d431d0447031f586086bb6e1ba29b3c443dc30e11dbb60ce71a";
  };

  buildType = "catkin";
  buildInputs = [ boost ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs hri-msgs rosconsole roscpp sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A wrapper library around the ROS4HRI ROS topics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
