
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pythonPackages, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-mikrotik-swos-tools";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/peci1/mikrotik_swos_tools-release/archive/release/melodic/mikrotik_swos_tools/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "b2485f328b55ea52030b6b2abfb30e14dbb579885553dcd399ccfac3a41218a4";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime pythonPackages.future pythonPackages.requests rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Integration between ROS (Robot Operating System) and Mikrotik SwOS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
