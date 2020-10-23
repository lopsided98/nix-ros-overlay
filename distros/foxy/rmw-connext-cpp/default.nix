
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, connext-cmake-module, rcpputils, rcutils, rmw, rmw-connext-shared-cpp, rosidl-cmake, rosidl-generator-dds-idl, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-connext-c, rosidl-typesupport-connext-cpp }:
buildRosPackage {
  pname = "ros-foxy-rmw-connext-cpp";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connext-release/archive/release/foxy/rmw_connext_cpp/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "26f61d98b0678a3f5f324ef2dc59ab0169acdf78d2bc575167591be216087485";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-dds-idl ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake connext-cmake-module rcpputils rcutils rmw rmw-connext-shared-cpp rosidl-cmake rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-connext-c rosidl-typesupport-connext-cpp ];
  nativeBuildInputs = [ ament-cmake rosidl-cmake ];

  meta = {
    description = ''Implement the ROS middleware interface using RTI Connext static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
