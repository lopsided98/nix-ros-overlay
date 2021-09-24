
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosgraph }:
buildRosPackage {
  pname = "ros-melodic-rosmaster";
  version = "1.14.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosmaster/1.14.12-1.tar.gz";
    name = "1.14.12-1.tar.gz";
    sha256 = "2baf28d3f3a194112d6c244f6e2fa6b4dd88030997a3185898afd30a87bcb7d4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.defusedxml rosgraph ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS <a href="http://ros.org/wiki/Master">Master</a> implementation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
