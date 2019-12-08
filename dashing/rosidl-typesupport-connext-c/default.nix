
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-c, ament-cmake, ament-lint-common, connext-cmake-module, rosidl-cmake, rosidl-parser, ament-lint-auto, rosidl-typesupport-connext-cpp, rcutils, rmw, rosidl-generator-dds-idl }:
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
  propagatedBuildInputs = [ rosidl-generator-c ament-cmake connext-cmake-module rosidl-cmake rosidl-parser rosidl-typesupport-connext-cpp rcutils rmw rosidl-generator-dds-idl ];
  nativeBuildInputs = [ ament-cmake connext-cmake-module rosidl-cmake rosidl-typesupport-connext-cpp rosidl-generator-c ];

  meta = {
    description = ''Generate the C interfaces for RTI Connext.'';
    license = with lib.licenses; [ asl20 ];
  };
}
