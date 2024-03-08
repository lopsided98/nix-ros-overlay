
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-google-benchmark, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, class-loader, composition-interfaces, launch-testing, rclcpp, rcpputils, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rclcpp-components";
  version = "27.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/rolling/rclcpp_components/27.0.0-2.tar.gz";
    name = "27.0.0-2.tar.gz";
    sha256 = "0de14e24fc25f8c575929df3bc33b4b098a3ead01946f37489404776b6284318";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rcpputils ];
  checkInputs = [ ament-cmake-google-benchmark ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing std-msgs ];
  propagatedBuildInputs = [ ament-index-cpp class-loader composition-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing tools for dynamically loadable components'';
    license = with lib.licenses; [ asl20 ];
  };
}
