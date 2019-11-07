
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp-components, ament-cmake-pytest, ament-cmake, rmw-implementation-cmake, rcutils, ament-lint-common, launch-testing, rosidl-default-generators, launch, launch-testing-ament-cmake, rosidl-cmake, rclcpp, launch-testing-ros, std-msgs, ament-lint-auto, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-logging-demo";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/logging_demo/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "ccb82b032260024a6ee033fb30fb84f9456db7b3f6f4d6d961030089da09c53b";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils rosidl-cmake rclcpp std-msgs rclcpp-components ];
  checkInputs = [ ament-cmake-pytest rmw-implementation-cmake ament-lint-common launch-testing launch launch-testing-ament-cmake ament-lint-auto launch-testing-ros ];
  propagatedBuildInputs = [ rclcpp-components rcutils rclcpp std-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Examples for using and configuring loggers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
