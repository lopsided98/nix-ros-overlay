
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, ament-cmake, rosidl-typesupport-interface, ament-lint-common, rosidl-parser, rosidl-typesupport-introspection-c, rosidl-cmake, ament-cmake-ros, ament-lint-auto, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-introspection-cpp";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_typesupport_introspection_cpp/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "1570370bff371bf30a962503558ea633353e398c9086ab32b02dbf238c0d0dd6";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-introspection-c ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-generator-cpp ament-cmake rosidl-typesupport-interface rosidl-typesupport-introspection-c rosidl-cmake rosidl-parser rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the message type support for dynamic message construction in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
