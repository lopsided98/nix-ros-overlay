
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, rosidl-typesupport-interface, rosidl-generator-cpp, rcutils, ament-lint-common, ament-cmake, ament-lint-auto, rosidl-generator-dds-idl, rmw, connext-cmake-module, rosidl-generator-c, rosidl-parser }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-typesupport-connext-cpp";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_connext-release/archive/release/eloquent/rosidl_typesupport_connext_cpp/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "10f92030be5270d7ce54a2ebf196da1190c7dae0117ca1fa34b68ab37516a261";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-cmake rosidl-typesupport-interface rosidl-generator-cpp rcutils ament-cmake rosidl-generator-dds-idl rmw connext-cmake-module rosidl-generator-c rosidl-parser ];
  nativeBuildInputs = [ rosidl-cmake rosidl-generator-cpp ament-cmake connext-cmake-module rosidl-generator-c ];

  meta = {
    description = ''Generate the C++ interfaces for RTI Connext.'';
    license = with lib.licenses; [ asl20 ];
  };
}
