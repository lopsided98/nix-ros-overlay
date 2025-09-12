
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros-core, ament-index-python, fmt, nlohmann_json, rcpputils, rcutils, ros-environment, rosidl-cli, rosidl-generator-c, rosidl-generator-type-description, rosidl-pycommon, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-cpp, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidlcpp-typesupport-cpp";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/rolling/rosidlcpp_typesupport_cpp/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "3f4789c42195d482b73d615a0210fc31fa45342d33447e9acd6e8f81ecfce6da";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros-core ros-environment rosidl-typesupport-introspection-cpp ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python fmt nlohmann_json rcpputils rcutils rosidl-cli rosidl-generator-c rosidl-generator-type-description rosidl-pycommon rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-c rosidl-typesupport-interface rosidlcpp-generator-core rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-ros-core ];

  meta = {
    description = "Generate the type support for C++ messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
