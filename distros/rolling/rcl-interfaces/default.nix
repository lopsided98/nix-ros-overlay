
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rcl-interfaces";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/rcl_interfaces/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "f0e346c5b39bbc10234eb8f233f9aaf05a608e96c7948f7378d2394ee71e33e6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''The ROS client library common interfaces.
    This package contains the messages and services which ROS client libraries will use under the hood to
    communicate higher level concepts such as parameters.'';
    license = with lib.licenses; [ asl20 ];
  };
}
