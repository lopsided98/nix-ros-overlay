
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-cmake, rosidl-generator-c, rosidl-parser, rosidl-pycommon, rosidl-runtime-c, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-rolling-rosidl-typesupport-introspection-c";
  version = "4.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_typesupport_introspection_c/4.8.1-1.tar.gz";
    name = "4.8.1-1.tar.gz";
    sha256 = "8b26630d3fa5944af88ceecf8ffd5392be4c4678732d6c6a6a62cf61677accfc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-index-python python3 rosidl-cli rosidl-cmake rosidl-generator-c rosidl-parser rosidl-pycommon rosidl-runtime-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros python3 rosidl-generator-c rosidl-pycommon ];

  meta = {
    description = "Generate the message type support for dynamic message construction in C.";
    license = with lib.licenses; [ asl20 ];
  };
}
