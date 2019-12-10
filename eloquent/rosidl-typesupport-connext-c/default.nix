
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, connext-cmake-module, rcutils, rmw, rosidl-cmake, rosidl-generator-c, rosidl-generator-dds-idl, rosidl-parser, rosidl-typesupport-connext-cpp }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-typesupport-connext-c";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_connext-release/archive/release/eloquent/rosidl_typesupport_connext_c/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "710c8e3c7dcae2231e4acbfb0245936ecfad8cbf90105058f88843b8258fc894";
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
