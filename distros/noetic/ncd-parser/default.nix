
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-ncd-parser";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/noetic/ncd_parser/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "b407bd8c0f11e9d1098373daaaaeca94fe2cddd7e05b0db427287a83ff880782";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ncd_parser package reads in .alog data files from the New College Dataset and broadcasts scan and odometry messages to ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
