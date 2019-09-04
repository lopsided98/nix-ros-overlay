
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, rosidl-generator-c, ament-cmake, rosidl-typesupport-interface, ament-lint-common, connext-cmake-module, rosidl-cmake, rosidl-parser, ament-lint-auto, rcutils, rmw, rosidl-generator-dds-idl }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-connext-cpp";
  version = "0.7.2-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosidl_typesupport_connext-release/archive/release/dashing/rosidl_typesupport_connext_cpp/0.7.2-1.tar.gz;
    sha256 = "f8844c4f51edc9f6c061d669939d67d42461f91fe50c6f408fdd978ac543196b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-generator-cpp rosidl-generator-c ament-cmake rosidl-typesupport-interface connext-cmake-module rosidl-cmake rosidl-parser rcutils rmw rosidl-generator-dds-idl ];
  nativeBuildInputs = [ rosidl-generator-cpp ament-cmake connext-cmake-module rosidl-cmake rosidl-generator-c ];

  meta = {
    description = ''Generate the C++ interfaces for RTI Connext.'';
    license = with lib.licenses; [ asl20 ];
  };
}
