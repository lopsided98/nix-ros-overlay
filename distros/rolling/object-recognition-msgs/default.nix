
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-object-recognition-msgs";
  version = "2.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/object_recognition_msgs-release/archive/release/rolling/object_recognition_msgs/2.0.0-4.tar.gz";
    name = "2.0.0-4.tar.gz";
    sha256 = "6f253657781284f0be612049548be04d8f005759acc3f3cc1e6d1d7d178d3941";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs geometry-msgs rosidl-default-runtime sensor-msgs shape-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Object_recognition_msgs contains the ROS message and the actionlib definition used in object_recognition_core";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
