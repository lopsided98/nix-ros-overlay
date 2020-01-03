
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, connext-cmake-module, rcutils, rmw, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-generator-dds-idl, rosidl-parser, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-crystal-rosidl-typesupport-connext-cpp";
  version = "0.6.4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_connext-release/archive/release/crystal/rosidl_typesupport_connext_cpp/0.6.4-0.tar.gz";
    name = "0.6.4-0.tar.gz";
    sha256 = "7a65e6e25646ea08557082d0ca4435958a2f09ff8670d6234342c244e1c2b682";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake connext-cmake-module rcutils rmw rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-generator-dds-idl rosidl-parser rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake connext-cmake-module rosidl-cmake rosidl-generator-c rosidl-generator-cpp ];

  meta = {
    description = ''Generate the C++ interfaces for RTI Connext.'';
    license = with lib.licenses; [ asl20 ];
  };
}
