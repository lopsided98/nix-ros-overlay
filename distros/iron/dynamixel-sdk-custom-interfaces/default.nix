
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-dynamixel-sdk-custom-interfaces";
  version = "3.7.40-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_sdk-release/archive/release/iron/dynamixel_sdk_custom_interfaces/3.7.40-5.tar.gz";
    name = "3.7.40-5.tar.gz";
    sha256 = "3816ee14d1af768e36eae96edd96019f4673982c3bc2608b0476d02618d04376";
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
