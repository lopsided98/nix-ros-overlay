
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roscpp-serialization, abseil-cpp, rostime }:
buildRosPackage {
  pname = "ros-melodic-ros-type-introspection";
  version = "1.3.1";

  src = fetchurl {
    url = https://github.com/facontidavide/ros_type_introspection-release/archive/release/melodic/ros_type_introspection/1.3.1-0.tar.gz;
    sha256 = "c3b62db46928a7b5946b9c2ff988313f92826a967912736601a53029b789a296";
  };

  propagatedBuildInputs = [ abseil-cpp roscpp rostime roscpp-serialization ];
  nativeBuildInputs = [ roscpp-serialization abseil-cpp catkin roscpp rostime ];

  meta = {
    description = ''The ros_type_introspection package allows the user to parse and deserialize
  ROS messages which type is unknown at compilation time.'';
    #license = lib.licenses.BSD;
  };
}
