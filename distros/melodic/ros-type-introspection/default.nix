
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roscpp-serialization, rostime }:
buildRosPackage {
  pname = "ros-melodic-ros-type-introspection";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/facontidavide/ros_type_introspection-release/archive/release/melodic/ros_type_introspection/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "81cd82a8df36832ba0f7d8d385a4b32858bdeb120a93d76991cfcdedd4f592e0";
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
