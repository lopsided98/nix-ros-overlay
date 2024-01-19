
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, python3Packages, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-mikrotik-swos-tools";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/peci1/mikrotik_swos_tools-release/archive/release/noetic/mikrotik_swos_tools/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "f376ebfaa167a0ffdf9e171d94d02370bb84811371314f78b78a35b3960b6488";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime python3Packages.future python3Packages.requests rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Integration between ROS (Robot Operating System) and Mikrotik SwOS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
