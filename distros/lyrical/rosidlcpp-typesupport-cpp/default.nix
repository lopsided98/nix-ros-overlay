
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros-core, ament-index-python, fmt, nlohmann_json, rcpputils, rcutils, ros-environment, rosidl-cli, rosidl-generator-c, rosidl-generator-type-description, rosidl-pycommon, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-cpp, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-lyrical-rosidlcpp-typesupport-cpp";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/lyrical/rosidlcpp_typesupport_cpp/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "bc120d40eedfb2c0a17be48b4df0cfbf15299fc7ac854a5ec3dc29daadbfe55f";
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
