
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mavros-msgs, roscpp, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-gimbal";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/gimbal/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "f8ee728287cd3dc2aa763e267bdf778f87a8f99bae10a5d4e2940e6f3a3a28da";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mavros-msgs roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gimbal package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
