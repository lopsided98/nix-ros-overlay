
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-rcl-interfaces";
  version = "2.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/lyrical/rcl_interfaces/2.4.5-1.tar.gz";
    name = "2.4.5-1.tar.gz";
    sha256 = "7ec27c9c9d8e4e1365e786018577daaf109e02818c72e1e6ab23b33ff4ffd290";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The ROS client library common interfaces.
    This package contains the messages and services which ROS client libraries will use under the hood to
    communicate higher level concepts such as parameters.";
    license = with lib.licenses; [ asl20 ];
  };
}
