
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, roscpp, rospy, rosunit, sensor-msgs, serial, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-teraranger-array";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/Terabee/teraranger_array-release/archive/release/melodic/teraranger_array/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "7d5ebf525e7be16d78cbeb170579970889386e503e84f571b4187450e3784233";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs message-runtime roscpp rospy sensor-msgs serial std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides ros nodes for multi-sensor arrays from Terabee'';
    license = with lib.licenses; [ mit ];
  };
}
