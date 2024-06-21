
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-object-recognition-msgs";
  version = "2.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/object_recognition_msgs-release/archive/release/jazzy/object_recognition_msgs/2.0.0-5.tar.gz";
    name = "2.0.0-5.tar.gz";
    sha256 = "47e1df8cb883af74e05044a76c2595c35dc98e88cd4cbb2ed37898036a1208bf";
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
