
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mavros, roscpp, roslib, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-heifu-simple-waypoint";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/heifu_simple_waypoint/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "e151ac8d72ef8fcbaf27dea4fcedb4047f3031d04815a44237d8265dce40b4b7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mavros roscpp roslib sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Heifu mavros interface'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
