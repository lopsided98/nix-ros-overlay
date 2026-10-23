
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, rcutils, rmw-implementation-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-logging-demo";
  version = "0.38.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/logging_demo/0.38.1-1.tar.gz";
    name = "0.38.1-1.tar.gz";
    sha256 = "ce0ce633861d1b662861d72330fce9094f474bc0d0725c060538f64970187948";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core rosidl-default-generators ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros rmw-implementation-cmake ];
  propagatedBuildInputs = [ example-interfaces rclcpp rclcpp-components rcutils rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core rosidl-default-generators ];

  meta = {
    description = "Examples for using and configuring loggers.";
    license = with lib.licenses; [ asl20 ];
  };
}
