
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roscpp-serialization, rostime }:
buildRosPackage {
  pname = "ros-kinetic-ros-type-introspection";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/ros_type_introspection-release/archive/release/kinetic/ros_type_introspection/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "89cce6fd04dc0e627da83cd315e957ed2305b278d6d3a35f413833e286a49176";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp roscpp-serialization rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_type_introspection package allows the user to parse and deserialize
  ROS messages which type is unknown at compilation time.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
