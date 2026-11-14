
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-dynamixel-sdk-custom-interfaces";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_sdk-release/archive/release/humble/dynamixel_sdk_custom_interfaces/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "c8ff7ed3e8635495fa2c547baba37ea91608dfe3681a5f3d6ba70610d364a412";
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
