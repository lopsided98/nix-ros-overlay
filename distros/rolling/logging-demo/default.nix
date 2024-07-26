
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, rcutils, rmw-implementation-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-logging-demo";
  version = "0.34.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/logging_demo/0.34.1-1.tar.gz";
    name = "0.34.1-1.tar.gz";
    sha256 = "7046c35a3449518620c58b9e1472c4844af87cefb1defcdbf2a4ba017851dae3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros rmw-implementation-cmake ];
  propagatedBuildInputs = [ rclcpp rclcpp-components rcutils rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Examples for using and configuring loggers.";
    license = with lib.licenses; [ asl20 ];
  };
}
