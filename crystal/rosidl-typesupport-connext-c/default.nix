
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-c, ament-cmake, ament-lint-common, connext-cmake-module, rosidl-cmake, rosidl-parser, ament-lint-auto, rosidl-typesupport-connext-cpp, rcutils, rmw, rosidl-generator-dds-idl }:
buildRosPackage {
  pname = "ros-crystal-rosidl-typesupport-connext-c";
  version = "0.6.4";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosidl_typesupport_connext-release/archive/release/crystal/rosidl_typesupport_connext_c/0.6.4-0.tar.gz;
    sha256 = "203f5177188d336538c2f0443dffcdd7226c418de48806f85f832e2ac416ad2b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-generator-c ament-cmake connext-cmake-module rosidl-cmake rosidl-parser rosidl-typesupport-connext-cpp rcutils rmw rosidl-generator-dds-idl ];
  nativeBuildInputs = [ ament-cmake connext-cmake-module rosidl-cmake rosidl-typesupport-connext-cpp rosidl-generator-c ];

  meta = {
    description = ''Generate the C interfaces for RTI Connext.'';
    license = with lib.licenses; [ asl20 ];
  };
}
