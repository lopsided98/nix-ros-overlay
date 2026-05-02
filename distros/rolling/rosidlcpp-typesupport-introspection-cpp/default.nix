
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-index-python, fmt, nlohmann_json, ros-environment, rosidl-cli, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-parser, rosidl-pycommon, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-interface, rosidl-typesupport-introspection-c, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidlcpp-typesupport-introspection-cpp";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/rolling/rosidlcpp_typesupport_introspection_cpp/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "296e16738d94739cf3241e4c050de48c105a6262440b953f97db26028b25cfae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros-core ros-environment ];
  propagatedBuildInputs = [ ament-cmake ament-index-python fmt nlohmann_json rosidl-cli rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-parser rosidl-pycommon rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-interface rosidl-typesupport-introspection-c rosidlcpp-generator-core rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core rosidl-generator-c rosidl-generator-cpp rosidl-pycommon ];

  meta = {
    description = "Generate the message type support for dynamic message construction in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
