
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp-serialization, catkin, rostime, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ros-type-introspection";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/ros_type_introspection-release/archive/release/melodic/ros_type_introspection/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "c3b138a3033791db8cf0b160fe79dddd40410f3bf7a35f82fed698daa30bcf0b";
  };

  buildType = "catkin";
  buildInputs = [ roscpp-serialization rostime roscpp ];
  propagatedBuildInputs = [ roscpp-serialization rostime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_type_introspection package allows the user to parse and deserialize
  ROS messages which type is unknown at compilation time.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
