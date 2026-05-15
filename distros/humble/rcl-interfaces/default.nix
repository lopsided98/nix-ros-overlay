
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rcl-interfaces";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/humble/rcl_interfaces/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "095152f673376f97d7cf31f1ba285f7b60a32dd576a9a07b8769e35c0405880e";
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
