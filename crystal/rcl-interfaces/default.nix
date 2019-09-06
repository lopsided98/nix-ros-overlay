
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, ament-lint-common, rosidl-default-generators, ament-lint-auto, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-crystal-rcl-interfaces";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/crystal/rcl_interfaces/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "600e4132a6d9f49b75eb6cd2d0ea17e227474529f2fad477e7f09eb2fd96525d";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''The ROS client library common interfaces.
    This package contains the messages and services which ROS client libraries will use under the hood to
    communicate higher level concepts such as parameters.'';
    license = with lib.licenses; [ asl20 ];
  };
}
