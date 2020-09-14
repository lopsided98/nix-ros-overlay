
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, rosidl-cmake, rosidl-parser, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-foxy-rosidl-typesupport-introspection-c";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/foxy/rosidl_typesupport_introspection_c/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "27159620d3bc123703e50d7ab5472062c81c868257480f0f8f4d98c5861933ad";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake rosidl-cmake rosidl-parser rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the message type support for dynamic message construction in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
