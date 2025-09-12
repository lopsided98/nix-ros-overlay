
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros, ament-index-python, fmt, nlohmann_json, rcpputils, rcutils, ros-environment, rosidl-cli, rosidl-generator-c, rosidl-pycommon, rosidl-runtime-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-c, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-jazzy-rosidlcpp-typesupport-c";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/jazzy/rosidlcpp_typesupport_c/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "6c4169a37ceebe0f8cfb759552337a98e9b5a99487e54df716611430ef0114ed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ros-environment rosidl-typesupport-introspection-c ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python fmt nlohmann_json rcpputils rcutils rosidl-cli rosidl-generator-c rosidl-pycommon rosidl-runtime-c rosidl-typesupport-interface rosidlcpp-generator-core rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-ros ];

  meta = {
    description = "Generate the type support for C messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
