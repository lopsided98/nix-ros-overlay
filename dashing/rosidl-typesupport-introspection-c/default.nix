
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-lint-auto, rosidl-cmake, rosidl-parser, ament-cmake-ros, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-introspection-c";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_typesupport_introspection_c/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "88fa3a0817c28f3c2cc1d44f4837db8147f0a4a285f3c4be05413ebf99024b3b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-cmake ament-cmake rosidl-parser rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the message type support for dynamic message construction in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
