
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-lint-auto, rosidl-cmake, rosidl-parser, ament-cmake-ros, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-introspection-c";
  version = "0.7.5-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_typesupport_introspection_c/0.7.5-1.tar.gz;
    sha256 = "9da2eb2d427a7a9f1479446d841daf4f0cd093df7779be395bc18bb6f56c42a7";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-cmake ament-cmake rosidl-parser rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the message type support for dynamic message construction in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
