
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-google-benchmark, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, class-loader, composition-interfaces, rcl-interfaces, rclcpp, rcpputils, rmw }:
buildRosPackage {
  pname = "ros-rolling-rclcpp-components";
  version = "33.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/rolling/rclcpp_components/33.0.1-1.tar.gz";
    name = "33.0.1-1.tar.gz";
    sha256 = "0b9db3fc252bd0ff455f57e31377cceda6446446a15bb88e95e9a34554945476";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-google-benchmark ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp class-loader composition-interfaces rcl-interfaces rclcpp rcpputils rmw ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Package containing tools for dynamically loadable components";
    license = with lib.licenses; [ asl20 ];
  };
}
