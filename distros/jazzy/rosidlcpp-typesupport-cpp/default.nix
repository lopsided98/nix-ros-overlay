
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros, ament-index-python, fmt, nlohmann_json, rcpputils, rcutils, ros-environment, rosidl-cli, rosidl-generator-c, rosidl-generator-type-description, rosidl-pycommon, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-cpp, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-jazzy-rosidlcpp-typesupport-cpp";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/jazzy/rosidlcpp_typesupport_cpp/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "325a679005c8f9f7c6a3efef15c49897dcf5ce59848f38c78fa2a2d5d6b444d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ros-environment rosidl-typesupport-introspection-cpp ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python fmt nlohmann_json rcpputils rcutils rosidl-cli rosidl-generator-c rosidl-generator-type-description rosidl-pycommon rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-c rosidl-typesupport-interface rosidlcpp-generator-core rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-ros ];

  meta = {
    description = "Generate the type support for C++ messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
