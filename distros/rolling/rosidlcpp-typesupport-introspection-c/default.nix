
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-index-python, fmt, nlohmann_json, rosidl-cli, rosidl-cmake, rosidl-generator-c, rosidl-parser, rosidl-pycommon, rosidl-runtime-c, rosidl-typesupport-interface, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidlcpp-typesupport-introspection-c";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/rolling/rosidlcpp_typesupport_introspection_c/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "ea325913d2038594060921726ccfda3582f7c70561fb7e3cd53f7ba6423f61cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ ament-index-python fmt nlohmann_json rosidl-cli rosidl-cmake rosidl-generator-c rosidl-parser rosidl-pycommon rosidl-runtime-c rosidl-typesupport-interface rosidlcpp-generator-core rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Generate the message type support for dynamic message construction in C.";
    license = with lib.licenses; [ asl20 ];
  };
}
