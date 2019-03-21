
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roscpp-serialization, abseil-cpp, rostime }:
buildRosPackage {
  pname = "ros-melodic-ros-type-introspection";
  version = "1.3.0";

  src = fetchurl {
    url = https://github.com/facontidavide/ros_type_introspection-release/archive/release/melodic/ros_type_introspection/1.3.0-0.tar.gz;
    sha256 = "dd4a65f0facf184daca9db53fb4199071a366ca7f939d147796d9ad0fd0dcbb4";
  };

  propagatedBuildInputs = [ abseil-cpp roscpp rostime roscpp-serialization ];
  nativeBuildInputs = [ roscpp-serialization abseil-cpp catkin roscpp rostime ];

  meta = {
    description = ''The ros_type_introspection package allows the user to parse and deserialize
  ROS messages which type is unknown at compilation time.'';
    #license = lib.licenses.BSD;
  };
}
