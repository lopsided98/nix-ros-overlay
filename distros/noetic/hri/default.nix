
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, geometry-msgs, hri-msgs, rosconsole, roscpp, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-hri";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/libhri-release/archive/release/noetic/hri/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "a6d0701b81d5e5301ccb3f61d48167c0fc147493274be487224b95fb553ee51a";
  };

  buildType = "catkin";
  buildInputs = [ boost catkin ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs hri-msgs rosconsole roscpp sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A wrapper library around the ROS4HRI ROS topics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
