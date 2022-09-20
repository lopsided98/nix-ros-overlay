
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-cmake, rosidl-parser, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-humble-rosidl-typesupport-introspection-c";
  version = "3.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/humble/rosidl_typesupport_introspection_c/3.1.3-2.tar.gz";
    name = "3.1.3-2.tar.gz";
    sha256 = "be93f9494a2ce780be712509a0c0069978432f6f19c8db2d0dcfae8eb67861c9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-index-python python3 rosidl-cli rosidl-cmake rosidl-parser rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros python3 rosidl-cmake ];

  meta = {
    description = ''Generate the message type support for dynamic message construction in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
