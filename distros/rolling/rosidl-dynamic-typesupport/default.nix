
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-rolling-rosidl-dynamic-typesupport";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport-release/archive/release/rolling/rosidl_dynamic_typesupport/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "11e14b425641b0aa7f5dda1aaa1897652e790a6f7aff03212c27f03f2834fa43";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ rcutils rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Unified serialization support interface for dynamic typesupport in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
