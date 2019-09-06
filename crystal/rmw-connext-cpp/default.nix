
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, rmw-connext-shared-cpp, rosidl-generator-c, ament-cmake, ament-lint-common, connext-cmake-module, rosidl-typesupport-connext-c, rosidl-cmake, ament-lint-auto, rosidl-typesupport-connext-cpp, rcutils, rmw, rosidl-generator-dds-idl }:
buildRosPackage {
  pname = "ros-crystal-rmw-connext-cpp";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rmw_connext-release/archive/release/crystal/rmw_connext_cpp/0.6.1-0.tar.gz;
    sha256 = "a4555f1b7959ab4d90e381594f96e4d96c81ff03fdd512cc584f78bd64ef2bab";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-cpp rmw-connext-shared-cpp rosidl-generator-c connext-cmake-module rosidl-typesupport-connext-c rosidl-typesupport-connext-cpp rcutils rmw rosidl-generator-dds-idl ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-generator-cpp rmw-connext-shared-cpp ament-cmake connext-cmake-module rosidl-typesupport-connext-c rosidl-cmake rosidl-typesupport-connext-cpp rcutils rmw rosidl-generator-c ];
  nativeBuildInputs = [ rosidl-cmake ament-cmake ];

  meta = {
    description = ''Implement the ROS middleware interface using RTI Connext static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
