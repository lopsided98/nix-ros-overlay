
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, connext-cmake-module, rosidl-cmake, rosidl-parser, ament-lint-auto, rosidl-typesupport-connext-cpp, rmw, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-crystal-rosidl-typesupport-connext-c";
  version = "0.6.4";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosidl_typesupport_connext-release/archive/release/crystal/rosidl_typesupport_connext_c/0.6.4-0.tar.gz;
    sha256 = "203f5177188d336538c2f0443dffcdd7226c418de48806f85f832e2ac416ad2b";
  };

  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rmw rosidl-parser ];
  nativeBuildInputs = [ ament-cmake connext-cmake-module rosidl-cmake rosidl-typesupport-connext-cpp rosidl-generator-c ];

  meta = {
    description = ''Generate the C interfaces for RTI Connext.'';
    license = with lib.licenses; [ asl20 ];
  };
}
