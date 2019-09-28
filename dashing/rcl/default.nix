
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmw-implementation-cmake, rosidl-default-runtime, rosidl-generator-c, ament-cmake-pytest, ament-cmake-gtest, launch, rmw-implementation, osrf-testing-tools-cpp, rmw, tinydir-vendor, launch-testing-ament-cmake, rcl-interfaces, ament-cmake-ros, rcutils, ament-lint-common, test-msgs, launch-testing, rcl-logging-noop, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rcl";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/dashing/rcl/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "149d5bac7f4503b4942ec2f23c9808fb7db5e761415bcffaf2e5ad1213be7b99";
  };

  buildType = "ament_cmake";
  buildInputs = [ tinydir-vendor rcl-logging-noop rmw-implementation rcl-interfaces rcutils rosidl-generator-c ];
  checkInputs = [ ament-cmake-pytest rmw-implementation-cmake ament-lint-common test-msgs launch-testing ament-cmake-gtest launch launch-testing-ament-cmake ament-lint-auto osrf-testing-tools-cpp rmw ];
  propagatedBuildInputs = [ rosidl-generator-c ament-cmake rcutils rcl-logging-noop rmw-implementation rcl-interfaces rosidl-default-runtime rmw tinydir-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library common implementation.
    This package contains an API which builds on the ROS middleware API and is optionally built upon by the other ROS client libraries.'';
    license = with lib.licenses; [ asl20 ];
  };
}
