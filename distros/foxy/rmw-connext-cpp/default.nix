
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, connext-cmake-module, rcutils, rmw, rmw-connext-shared-cpp, rosidl-cmake, rosidl-generator-dds-idl, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-connext-c, rosidl-typesupport-connext-cpp }:
buildRosPackage {
  pname = "ros-foxy-rmw-connext-cpp";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connext-release/archive/release/foxy/rmw_connext_cpp/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "ed72595965752f2def9b6ea00439169fcbfb034c6981ac01acfc71e5ae2e0671";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-dds-idl ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake connext-cmake-module rcutils rmw rmw-connext-shared-cpp rosidl-cmake rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-connext-c rosidl-typesupport-connext-cpp ];
  nativeBuildInputs = [ ament-cmake rosidl-cmake ];

  meta = {
    description = ''Implement the ROS middleware interface using RTI Connext static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
