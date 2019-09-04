
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-common, rosidl-cmake, rosidl-parser, ament-lint-auto, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-crystal-rosidl-typesupport-introspection-c";
  version = "0.6.3";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosidl-release/archive/release/crystal/rosidl_typesupport_introspection_c/0.6.3-0.tar.gz;
    sha256 = "23fc3046491d1816be15edcd3a210ee401c3efef2b6030efe82dbd2fee1fa783";
  };

  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-cmake rosidl-parser rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the message type support for dynamic message construction in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
