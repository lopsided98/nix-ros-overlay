
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roscpp-serialization, abseil-cpp, rostime }:
buildRosPackage {
  pname = "ros-lunar-ros-type-introspection";
  version = "1.3.3-r1";

  src = fetchurl {
    url = https://github.com/facontidavide/ros_type_introspection-release/archive/release/lunar/ros_type_introspection/1.3.3-1.tar.gz;
    sha256 = "43aa9c33852999c3997c82518fbb45efe63e4baed28256ed9c70da62c6ef472f";
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
