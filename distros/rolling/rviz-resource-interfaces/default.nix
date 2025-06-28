
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rviz-resource-interfaces";
  version = "15.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz_resource_interfaces/15.1.4-1.tar.gz";
    name = "15.1.4-1.tar.gz";
    sha256 = "521fd622a54060bbb96e25deb4eb7fb227535f79e45e3acf9f2ce028c8a7794d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS interfaces for working with resources like meshes.";
    license = with lib.licenses; [ asl20 ];
  };
}
