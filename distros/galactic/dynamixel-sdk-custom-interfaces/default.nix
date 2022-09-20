
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-dynamixel-sdk-custom-interfaces";
  version = "3.7.40-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/dynamixel_sdk-release/archive/release/galactic/dynamixel_sdk_custom_interfaces/3.7.40-1.tar.gz";
    name = "3.7.40-1.tar.gz";
    sha256 = "c0867bceda098687932c89f75b9ce8dbcac63d3dcaad395d071e662637848c09";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS2 custom interface examples using ROBOTIS DYNAMIXEL SDK'';
    license = with lib.licenses; [ asl20 ];
  };
}
