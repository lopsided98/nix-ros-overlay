
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-realtime-tools";
  version = "1.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/realtime_tools-release/archive/release/noetic/realtime_tools/1.16.0-1.tar.gz";
    name = "1.16.0-1.tar.gz";
    sha256 = "85d488daad8d664f92ae366fed15a97259682a873f91e557f28f8c6fad729c40";
  };

  buildType = "catkin";
  checkInputs = [ actionlib rostest rosunit ];
  propagatedBuildInputs = [ actionlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
