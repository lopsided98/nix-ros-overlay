
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-husarion-ugv-msgs";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/husarion_ugv_ros-release/archive/release/jazzy/husarion_ugv_msgs/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "c6a10dfc4f9e1e965b7db5e91bb06a701ba2f5eb949606bd9431a4d3cc97738f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Custom messages for Husarion UGV";
    license = with lib.licenses; [ asl20 ];
  };
}
