
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-object-recognition-msgs";
  version = "2.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/object_recognition_msgs-release/archive/release/lyrical/object_recognition_msgs/2.0.0-6.tar.gz";
    name = "2.0.0-6.tar.gz";
    sha256 = "d1042d8ababdf41ca5b7b5470149dcf60ce5c164e79abb02798a5bcb2b9e9991";
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
