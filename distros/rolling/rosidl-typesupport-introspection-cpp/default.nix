
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-parser, rosidl-pycommon, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-interface, rosidl-typesupport-introspection-c }:
buildRosPackage {
  pname = "ros-rolling-rosidl-typesupport-introspection-cpp";
  version = "4.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_typesupport_introspection_cpp/4.9.4-1.tar.gz";
    name = "4.9.4-1.tar.gz";
    sha256 = "8f5f9a90a92f3424c26b2d71bcd4f1d97a4f350c13023cef6ffbef751439471c";
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
