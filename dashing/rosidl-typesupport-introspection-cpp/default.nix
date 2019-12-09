
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, rosidl-typesupport-interface, rosidl-generator-cpp, ament-cmake-ros, ament-lint-common, ament-cmake, ament-lint-auto, rosidl-typesupport-introspection-c, rosidl-generator-c, rosidl-parser }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-introspection-cpp";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_typesupport_introspection_cpp/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "526226529a953bb61270f96a4be65ce203af3d2fb95060e8e0e31458a509d390";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-introspection-c ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-cmake rosidl-typesupport-interface rosidl-generator-cpp ament-cmake rosidl-typesupport-introspection-c rosidl-generator-c rosidl-parser ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the message type support for dynamic message construction in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
