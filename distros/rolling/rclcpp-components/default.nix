
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-google-benchmark, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, class-loader, composition-interfaces, rcl-interfaces, rclcpp, rcpputils, rmw }:
buildRosPackage {
  pname = "ros-rolling-rclcpp-components";
  version = "30.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/rolling/rclcpp_components/30.1.4-1.tar.gz";
    name = "30.1.4-1.tar.gz";
    sha256 = "50ac64bd538aa78717377d8975ce61587c828ef196e474087b61c9ca2c664a6c";
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
