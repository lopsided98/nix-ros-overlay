
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, serial, catkin, message-generation, message-runtime, rospy, std-msgs, dynamic-reconfigure, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-teraranger-array";
  version = "1.3.4";

  src = fetchurl {
    url = https://github.com/Terabee/teraranger_array-release/archive/release/kinetic/teraranger_array/1.3.4-0.tar.gz;
    sha256 = "a7ed463ffefc6f3bd1aee6111310ad55a6ac847c5bb3b9ce1d31e00adec74ba7";
  };

  buildInputs = [ message-generation dynamic-reconfigure std-msgs sensor-msgs serial geometry-msgs roscpp rospy ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ message-runtime dynamic-reconfigure std-msgs sensor-msgs serial geometry-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The teraranger_array package for TeraRanger Array Products (Multiflex, One)'';
    #license = lib.licenses.MIT;
  };
}
