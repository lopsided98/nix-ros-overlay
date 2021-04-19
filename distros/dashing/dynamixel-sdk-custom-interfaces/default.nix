
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-dynamixel-sdk-custom-interfaces";
  version = "3.7.40-r10";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/dynamixel_sdk-release/archive/release/dashing/dynamixel_sdk_custom_interfaces/3.7.40-10.tar.gz";
    name = "3.7.40-10.tar.gz";
    sha256 = "928d2d3d9f11b5fafd73e008431a0393404e8bf04932325bf700cb929efbeef9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS2 custom interface examples using ROBOTIS DYNAMIXEL SDK'';
    license = with lib.licenses; [ asl20 ];
  };
}
