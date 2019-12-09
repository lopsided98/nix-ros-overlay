
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, rcutils, rosidl-typesupport-connext-cpp, ament-lint-common, ament-cmake, ament-lint-auto, rosidl-generator-dds-idl, rmw, connext-cmake-module, rosidl-generator-c, rosidl-parser }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-connext-c";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_connext-release/archive/release/dashing/rosidl_typesupport_connext_c/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "4a69fbbc8712f66b3b33c83236be72c1f2cf9a97dce5895d0c9bd441e0788cd6";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-cmake rcutils rosidl-typesupport-connext-cpp ament-cmake rosidl-generator-dds-idl rmw connext-cmake-module rosidl-generator-c rosidl-parser ];
  nativeBuildInputs = [ rosidl-cmake rosidl-typesupport-connext-cpp ament-cmake connext-cmake-module rosidl-generator-c ];

  meta = {
    description = ''Generate the C interfaces for RTI Connext.'';
    license = with lib.licenses; [ asl20 ];
  };
}
