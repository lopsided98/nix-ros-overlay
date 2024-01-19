
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-realtime-tools";
  version = "1.16.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/realtime_tools-release/archive/release/noetic/realtime_tools/1.16.1-1.tar.gz";
    name = "1.16.1-1.tar.gz";
    sha256 = "0082db3f482804a3abc2034b2452fb7777b90b47a7144a78fcd552412bac76ac";
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
