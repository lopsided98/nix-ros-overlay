
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roscpp-serialization, abseil-cpp, rostime }:
buildRosPackage {
  pname = "ros-lunar-ros-type-introspection";
  version = "1.3.1";

  src = fetchurl {
    url = https://github.com/facontidavide/ros_type_introspection-release/archive/release/lunar/ros_type_introspection/1.3.1-0.tar.gz;
    sha256 = "ed074210d9d28486dc83893846fd38511ddb7fe74dd7214ec30b2e957f68e96d";
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
