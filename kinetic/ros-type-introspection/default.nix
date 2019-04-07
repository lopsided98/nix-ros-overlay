
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roscpp-serialization, abseil-cpp, rostime }:
buildRosPackage {
  pname = "ros-kinetic-ros-type-introspection";
  version = "1.3.1";

  src = fetchurl {
    url = https://github.com/facontidavide/ros_type_introspection-release/archive/release/kinetic/ros_type_introspection/1.3.1-0.tar.gz;
    sha256 = "25df36974ab8d97df23e60fc3c636c8d5f7d90a8b53fb18e1fc78660e8897052";
  };

  buildInputs = [ abseil-cpp roscpp rostime roscpp-serialization ];
  propagatedBuildInputs = [ abseil-cpp roscpp rostime roscpp-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_type_introspection package allows the user to parse and deserialize
  ROS messages which type is unknown at compilation time.'';
    #license = lib.licenses.BSD;
  };
}
