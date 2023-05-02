
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, geometry-msgs, hri-msgs, rosconsole, roscpp, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-hri";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/libhri-release/archive/release/melodic/hri/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "5a50ec3a75b8a1cff28dc14341c553b4ed900a01aae619579f47358f2771a999";
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
