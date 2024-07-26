
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-google-benchmark, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, class-loader, composition-interfaces, launch-testing, rclcpp, rcpputils, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rclcpp-components";
  version = "28.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/rolling/rclcpp_components/28.3.2-1.tar.gz";
    name = "28.3.2-1.tar.gz";
    sha256 = "f0b7eacae8d89ca6b516b4d05cbc28c198e14066f54d5f1bc41fec13a71dd6df";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rcpputils ];
  checkInputs = [ ament-cmake-google-benchmark ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing std-msgs ];
  propagatedBuildInputs = [ ament-index-cpp class-loader composition-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Package containing tools for dynamically loadable components";
    license = with lib.licenses; [ asl20 ];
  };
}
