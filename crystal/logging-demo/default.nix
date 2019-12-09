
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, class-loader, rcutils, launch, rmw-implementation-cmake, std-msgs, launch-testing, rosidl-default-runtime, ament-lint-common, ament-cmake, ament-cmake-pytest, ament-index-cpp, rosidl-default-generators, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-logging-demo";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/crystal/logging_demo/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "7486e3acfc247d398ac0aaa8a89cec089c9dca1e9f2a542221c3cc894faa658c";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-cmake rcutils std-msgs class-loader ament-index-cpp rclcpp ];
  checkInputs = [ launch rmw-implementation-cmake launch-testing ament-lint-common ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ rcutils rosidl-default-runtime std-msgs class-loader ament-index-cpp rclcpp ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Examples for using and configuring loggers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
