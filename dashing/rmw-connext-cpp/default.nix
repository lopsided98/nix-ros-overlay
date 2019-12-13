
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, connext-cmake-module, rcutils, rmw, rmw-connext-shared-cpp, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-generator-dds-idl, rosidl-typesupport-connext-c, rosidl-typesupport-connext-cpp }:
buildRosPackage {
  pname = "ros-dashing-rmw-connext-cpp";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connext-release/archive/release/dashing/rmw_connext_cpp/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "e93e9082d98e287fb1e91d43aa7b018ea5db1399beaf32d039219b1ffd2b59d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-dds-idl ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake connext-cmake-module rcutils rmw rmw-connext-shared-cpp rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-typesupport-connext-c rosidl-typesupport-connext-cpp ];
  nativeBuildInputs = [ ament-cmake rosidl-cmake ];

  meta = {
    description = ''Implement the ROS middleware interface using RTI Connext static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
