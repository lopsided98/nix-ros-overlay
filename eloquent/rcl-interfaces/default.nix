
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, ament-lint-common, ament-cmake, rosidl-default-generators, builtin-interfaces, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rcl-interfaces";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/eloquent/rcl_interfaces/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "24ab67cc687d2a663b196cb3399a5e3889bcf81b343bae7173267c7379e39989";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-default-runtime builtin-interfaces ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''The ROS client library common interfaces.
    This package contains the messages and services which ROS client libraries will use under the hood to
    communicate higher level concepts such as parameters.'';
    license = with lib.licenses; [ asl20 ];
  };
}
