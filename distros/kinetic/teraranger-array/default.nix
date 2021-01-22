
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, roscpp, rospy, rosunit, sensor-msgs, serial, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-teraranger-array";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/Terabee/teraranger_array-release/archive/release/kinetic/teraranger_array/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "67cef9d3e64f2d16a34522cd17429e9829e5342d6f043fcbf2d4126e15326ebf";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs message-runtime roscpp rospy sensor-msgs serial std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides ros nodes for multi-sensor arrays from Terabee'';
    license = with lib.licenses; [ mit ];
  };
}
