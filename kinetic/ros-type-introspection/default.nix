
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roscpp-serialization, abseil-cpp, rostime }:
buildRosPackage {
  pname = "ros-kinetic-ros-type-introspection";
  version = "1.3.2";

  src = fetchurl {
    url = https://github.com/facontidavide/ros_type_introspection-release/archive/release/kinetic/ros_type_introspection/1.3.2-0.tar.gz;
    sha256 = "fb3281d0706d9421093b3f794417fd86cec3d4786fd8cdb83638c06f70879868";
  };

  buildInputs = [ abseil-cpp roscpp rostime roscpp-serialization ];
  propagatedBuildInputs = [ abseil-cpp roscpp rostime roscpp-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_type_introspection package allows the user to parse and deserialize
  ROS messages which type is unknown at compilation time.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
