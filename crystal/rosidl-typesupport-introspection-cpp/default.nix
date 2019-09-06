
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, ament-cmake, rosidl-typesupport-interface, ament-lint-common, rosidl-parser, rosidl-typesupport-introspection-c, rosidl-cmake, ament-cmake-ros, ament-lint-auto, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-crystal-rosidl-typesupport-introspection-cpp";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/crystal/rosidl_typesupport_introspection_cpp/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "8c5d625a6f4d27ff0082cbfcfaf4409592d42a01ac99275d604be9bc893b6830";
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
