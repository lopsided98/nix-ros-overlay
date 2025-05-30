
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-dynamixel-sdk-custom-interfaces";
  version = "3.8.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_sdk-release/archive/release/kilted/dynamixel_sdk_custom_interfaces/3.8.3-2.tar.gz";
    name = "3.8.3-2.tar.gz";
    sha256 = "867c8d230d2d376f1dbdced86fb08d3a2ce82afe88d7c677afa4f9649679b760";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS 2 custom interface examples using ROBOTIS DYNAMIXEL SDK";
    license = with lib.licenses; [ asl20 ];
  };
}
