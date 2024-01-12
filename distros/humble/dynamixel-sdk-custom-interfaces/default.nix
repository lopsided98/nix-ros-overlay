
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-dynamixel-sdk-custom-interfaces";
  version = "3.7.60-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_sdk-release/archive/release/humble/dynamixel_sdk_custom_interfaces/3.7.60-1.tar.gz";
    name = "3.7.60-1.tar.gz";
    sha256 = "75841255d97010335e1c6aaccabef9d292338b6613c6c53c20331c69e1d19e10";
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
