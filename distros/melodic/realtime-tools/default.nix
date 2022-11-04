
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-realtime-tools";
  version = "1.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/realtime_tools-release/archive/release/melodic/realtime_tools/1.15.1-1.tar.gz";
    name = "1.15.1-1.tar.gz";
    sha256 = "acf2cb7827b85a846c7fb3f01879260c2eae38576856e0059ce983521eda99d3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ actionlib rostest rosunit ];
  propagatedBuildInputs = [ actionlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
