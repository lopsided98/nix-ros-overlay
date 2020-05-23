
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosout";
  version = "1.15.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosout/1.15.6-1.tar.gz";
    name = "1.15.6-1.tar.gz";
    sha256 = "edcfe252192acf34ae9008a39f54f7ad51e4c64698c34596c9712e76ff5169a7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp rosgraph-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''System-wide logging mechanism for messages sent to the /rosout topic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
