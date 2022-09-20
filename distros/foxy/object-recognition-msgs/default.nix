
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-object-recognition-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/object_recognition_msgs-release/archive/release/foxy/object_recognition_msgs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "16ab384e99d3e6f75d017588c69f6d944cc0942c9f37efcf703db45d1f38a639";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs geometry-msgs rosidl-default-runtime sensor-msgs shape-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Object_recognition_msgs contains the ROS message and the actionlib definition used in object_recognition_core'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
