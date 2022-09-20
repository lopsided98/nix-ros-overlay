
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, geometry-msgs, hri-msgs, rosconsole, roscpp, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-hri";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/libhri-release/archive/release/melodic/hri/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "f1855981d95343c53912ee8fcbfabc4526465636ed127fce75f14ef89698ad89";
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
