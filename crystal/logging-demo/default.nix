
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, rmw-implementation-cmake, ament-lint-common, rcutils, launch-testing, class-loader, launch, rosidl-default-generators, rosidl-cmake, rclcpp, ament-index-cpp, std-msgs, ament-lint-auto, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-crystal-logging-demo";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/crystal/logging_demo/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "7486e3acfc247d398ac0aaa8a89cec089c9dca1e9f2a542221c3cc894faa658c";
  };

  buildType = "ament_cmake";
  buildInputs = [ class-loader rosidl-cmake rclcpp ament-index-cpp std-msgs rcutils ];
  checkInputs = [ ament-cmake-pytest rmw-implementation-cmake ament-lint-common launch-testing launch ament-lint-auto ];
  propagatedBuildInputs = [ rcutils class-loader rclcpp ament-index-cpp std-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Examples for using and configuring loggers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
