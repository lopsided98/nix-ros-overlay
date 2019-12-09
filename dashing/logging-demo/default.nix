
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-testing-ros, rosidl-cmake, rcutils, rclcpp-components, launch, std-msgs, rosidl-default-runtime, rmw-implementation-cmake, launch-testing, ament-lint-common, ament-cmake, launch-testing-ament-cmake, ament-cmake-pytest, rosidl-default-generators, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-logging-demo";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/logging_demo/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "ccb82b032260024a6ee033fb30fb84f9456db7b3f6f4d6d961030089da09c53b";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-cmake rcutils rclcpp-components std-msgs rclcpp ];
  checkInputs = [ launch-testing-ros launch rmw-implementation-cmake launch-testing ament-lint-common launch-testing-ament-cmake ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ rcutils rclcpp-components rosidl-default-runtime std-msgs rclcpp ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Examples for using and configuring loggers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
