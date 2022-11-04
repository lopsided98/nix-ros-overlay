
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, python3Packages, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-mikrotik-swos-tools";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/peci1/mikrotik_swos_tools-release/archive/release/noetic/mikrotik_swos_tools/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "de151d2c0d3828cb6f9888ce781c7d5f9f90c1b25b5dd06dbc74c4cc49073021";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime python3Packages.requests rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Integration between ROS (Robot Operating System) and Mikrotik SwOS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
