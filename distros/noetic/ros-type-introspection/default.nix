
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roscpp-serialization, rostime }:
buildRosPackage {
  pname = "ros-noetic-ros-type-introspection";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/ros_type_introspection-release/archive/release/noetic/ros_type_introspection/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "10948016cd33a97ecf631bb6acdf6ed500af0be368c4e8bdedba2ad0441e967b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp roscpp-serialization rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_type_introspection package allows the user to parse and deserialize
  ROS messages which type is unknown at compilation time.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
