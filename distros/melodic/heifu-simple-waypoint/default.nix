
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mavros, roscpp, roslib, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-heifu-simple-waypoint";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/amferreiraBEV/heifu-release/archive/release/melodic/heifu_simple_waypoint/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "47571af1750b82faa776632f484ca4a8befd1c854185e6bb4dc68c4d06788ec2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mavros roscpp roslib sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Heifu mavros interface'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
