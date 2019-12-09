
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rmw-connext-shared-cpp, rosidl-cmake, rosidl-generator-cpp, rcutils, rosidl-typesupport-connext-cpp, ament-lint-common, ament-cmake, rosidl-generator-dds-idl, rmw, connext-cmake-module, rosidl-typesupport-connext-c, rosidl-generator-c, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rmw-connext-cpp";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connext-release/archive/release/crystal/rmw_connext_cpp/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "a4555f1b7959ab4d90e381594f96e4d96c81ff03fdd512cc584f78bd64ef2bab";
  };

  buildType = "ament_cmake";
  buildInputs = [ rmw-connext-shared-cpp rosidl-generator-cpp rcutils rosidl-typesupport-connext-cpp rosidl-generator-dds-idl rmw connext-cmake-module rosidl-typesupport-connext-c rosidl-generator-c ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rmw-connext-shared-cpp rosidl-cmake rosidl-generator-cpp rcutils rosidl-typesupport-connext-cpp ament-cmake rmw connext-cmake-module rosidl-typesupport-connext-c rosidl-generator-c ];
  nativeBuildInputs = [ rosidl-cmake ament-cmake ];

  meta = {
    description = ''Implement the ROS middleware interface using RTI Connext static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
