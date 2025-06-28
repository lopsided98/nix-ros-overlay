
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros-core, ament-index-python, fmt, nlohmann_json, rcpputils, rcutils, rosidl-cli, rosidl-generator-c, rosidl-pycommon, rosidl-runtime-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-c, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidlcpp-typesupport-c";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/rolling/rosidlcpp_typesupport_c/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "b8be55a57cc4112af268887e2f674185920efeea8cd5ae73689e0374b21b7603";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros-core rosidl-typesupport-introspection-c ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python fmt nlohmann_json rcpputils rcutils rosidl-cli rosidl-generator-c rosidl-pycommon rosidl-runtime-c rosidl-typesupport-interface rosidlcpp-generator-core rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-ros-core ];

  meta = {
    description = "Generate the type support for C messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
