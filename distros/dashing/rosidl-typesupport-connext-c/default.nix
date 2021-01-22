
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, connext-cmake-module, rcutils, rmw, rosidl-cmake, rosidl-generator-c, rosidl-generator-dds-idl, rosidl-parser, rosidl-typesupport-connext-cpp }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-connext-c";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_connext-release/archive/release/dashing/rosidl_typesupport_connext_c/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "4a69fbbc8712f66b3b33c83236be72c1f2cf9a97dce5895d0c9bd441e0788cd6";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake connext-cmake-module rcutils rmw rosidl-cmake rosidl-generator-c rosidl-generator-dds-idl rosidl-parser rosidl-typesupport-connext-cpp ];
  nativeBuildInputs = [ ament-cmake connext-cmake-module rosidl-cmake rosidl-generator-c rosidl-typesupport-connext-cpp ];

  meta = {
    description = ''Generate the C interfaces for RTI Connext.'';
    license = with lib.licenses; [ asl20 ];
  };
}
