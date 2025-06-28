
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-parser, rosidl-pycommon, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-interface, rosidl-typesupport-introspection-c }:
buildRosPackage {
  pname = "ros-kilted-rosidl-typesupport-introspection-cpp";
  version = "4.9.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/kilted/rosidl_typesupport_introspection_cpp/4.9.4-2.tar.gz";
    name = "4.9.4-2.tar.gz";
    sha256 = "c66fae81a8e4231fe82696c586e66d78952d0d0779b2e7888767bf3405311e9d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-index-python python3 rosidl-cli rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-parser rosidl-pycommon rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-interface rosidl-typesupport-introspection-c ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core python3 rosidl-generator-c rosidl-generator-cpp rosidl-pycommon ];

  meta = {
    description = "Generate the message type support for dynamic message construction in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
