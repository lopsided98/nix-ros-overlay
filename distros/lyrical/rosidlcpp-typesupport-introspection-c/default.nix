
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-index-python, fmt, nlohmann_json, ros-environment, rosidl-cli, rosidl-cmake, rosidl-generator-c, rosidl-parser, rosidl-pycommon, rosidl-runtime-c, rosidl-typesupport-interface, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-lyrical-rosidlcpp-typesupport-introspection-c";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/lyrical/rosidlcpp_typesupport_introspection_c/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "0d34d56c3c9822a5fb277b525527baf29e28ea172903ee15597f403371b1e808";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ros-environment ];
  propagatedBuildInputs = [ ament-index-python fmt nlohmann_json rosidl-cli rosidl-cmake rosidl-generator-c rosidl-parser rosidl-pycommon rosidl-runtime-c rosidl-typesupport-interface rosidlcpp-generator-core rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Generate the message type support for dynamic message construction in C.";
    license = with lib.licenses; [ asl20 ];
  };
}
