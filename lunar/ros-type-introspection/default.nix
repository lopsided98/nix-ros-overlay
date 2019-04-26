
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roscpp-serialization, abseil-cpp, rostime }:
buildRosPackage {
  pname = "ros-lunar-ros-type-introspection";
  version = "1.3.2-r1";

  src = fetchurl {
    url = https://github.com/facontidavide/ros_type_introspection-release/archive/release/lunar/ros_type_introspection/1.3.2-1.tar.gz;
    sha256 = "4a084bf7a2093928ba73b196141841e4776fa05ba430c56ceb73c98be26e4a79";
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
