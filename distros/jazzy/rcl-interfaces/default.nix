
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-rcl-interfaces";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/jazzy/rcl_interfaces/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "333a92fc94866481643e8715caba77a3f803f5b83b9b7830704019709e0fe45c";
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
