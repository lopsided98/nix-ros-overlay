
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roscpp-serialization, abseil-cpp, rostime }:
buildRosPackage {
  pname = "ros-kinetic-ros-type-introspection";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/ros_type_introspection-release/archive/release/kinetic/ros_type_introspection/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "b63e3ec1785ec13a785f73f4a9ad3e843dc1692e1b515210f044b08ee73df703";
  };

  buildType = "catkin";
  buildInputs = [ abseil-cpp roscpp rostime roscpp-serialization ];
  propagatedBuildInputs = [ abseil-cpp rostime roscpp roscpp-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_type_introspection package allows the user to parse and deserialize
  ROS messages which type is unknown at compilation time.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
