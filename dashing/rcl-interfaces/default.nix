
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, ament-lint-common, rosidl-default-generators, ament-lint-auto, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-rcl-interfaces";
  version = "0.7.4-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/dashing/rcl_interfaces/0.7.4-1.tar.gz;
    sha256 = "a2a3bb956ad9c9f07d9f8c0d7877646fbf5def24514f9e0b6d68c3bbeaa10eeb";
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
