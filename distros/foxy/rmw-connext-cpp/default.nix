
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, connext-cmake-module, rcpputils, rcutils, rmw, rmw-connext-shared-cpp, rosidl-cmake, rosidl-generator-dds-idl, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-connext-c, rosidl-typesupport-connext-cpp }:
buildRosPackage {
  pname = "ros-foxy-rmw-connext-cpp";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connext-release/archive/release/foxy/rmw_connext_cpp/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "e8f2d56f11d3530a8561d48b2af64a26763d26c5712c114bca9628b214fd180a";
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
