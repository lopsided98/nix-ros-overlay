
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros, ament-index-python, fmt, nlohmann_json, rcpputils, rcutils, rosidl-cli, rosidl-generator-c, rosidl-generator-type-description, rosidl-pycommon, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-cpp, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidlcpp-typesupport-cpp";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/rolling/rosidlcpp_typesupport_cpp/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "abb7bfdd2b972acc9a66e40976493936f25b989950ac367efd201cff9b5d147c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-typesupport-introspection-cpp ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python fmt nlohmann_json rcpputils rcutils rosidl-cli rosidl-generator-c rosidl-generator-type-description rosidl-pycommon rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-c rosidl-typesupport-interface rosidlcpp-generator-core rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-ros ];

  meta = {
    description = "Generate the type support for C++ messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
