
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, test-msgs, osrf-testing-tools-cpp, rmw-implementation, ament-lint-auto, ament-cmake-ros, rcutils, rmw-implementation-cmake, launch-testing, ament-lint-common, rmw, rosidl-generator-c, tinydir-vendor, ament-cmake-gtest, rosidl-default-runtime, launch-testing-ament-cmake, launch, rcl-interfaces, ament-cmake-pytest, rcl-logging-noop }:
buildRosPackage {
  pname = "ros-dashing-rcl";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/dashing/rcl/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "149d5bac7f4503b4942ec2f23c9808fb7db5e761415bcffaf2e5ad1213be7b99";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-c rcutils rcl-interfaces rmw-implementation tinydir-vendor rcl-logging-noop ];
  checkInputs = [ launch rmw-implementation-cmake launch-testing ament-lint-common test-msgs ament-cmake-gtest launch-testing-ament-cmake osrf-testing-tools-cpp ament-cmake-pytest rmw ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-generator-c rcutils rosidl-default-runtime ament-cmake rcl-interfaces rmw rmw-implementation tinydir-vendor rcl-logging-noop ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library common implementation.
    This package contains an API which builds on the ROS middleware API and is optionally built upon by the other ROS client libraries.'';
    license = with lib.licenses; [ asl20 ];
  };
}
