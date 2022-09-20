
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, connext-cmake-module, rcutils, rmw, rosidl-cmake, rosidl-generator-c, rosidl-generator-dds-idl, rosidl-parser, rosidl-runtime-c, rosidl-typesupport-connext-cpp }:
buildRosPackage {
  pname = "ros-foxy-rosidl-typesupport-connext-c";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_connext-release/archive/release/foxy/rosidl_typesupport_connext_c/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "60b24753c51030c08d9cce34541a2ce02d528759da2eb0006fdf8ceff243a204";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake connext-cmake-module rcutils rmw rosidl-cmake rosidl-generator-c rosidl-generator-dds-idl rosidl-parser rosidl-runtime-c rosidl-typesupport-connext-cpp ];
  nativeBuildInputs = [ ament-cmake connext-cmake-module rcutils rosidl-cmake rosidl-generator-c rosidl-generator-dds-idl rosidl-runtime-c rosidl-typesupport-connext-cpp ];

  meta = {
    description = ''Generate the C interfaces for RTI Connext.'';
    license = with lib.licenses; [ asl20 ];
  };
}
