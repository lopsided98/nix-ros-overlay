
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-object-recognition-msgs";
  version = "2.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/object_recognition_msgs-release/archive/release/kilted/object_recognition_msgs/2.0.0-5.tar.gz";
    name = "2.0.0-5.tar.gz";
    sha256 = "e5bb73a4c9b76a8b2c7395ceed2d4552ff5a4e490d0c9dd0e7845a8b352d859c";
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
