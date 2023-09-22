
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-google-benchmark, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, class-loader, composition-interfaces, launch-testing, rclcpp, rcpputils, std-msgs }:
buildRosPackage {
  pname = "ros-humble-rclcpp-components";
  version = "16.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/humble/rclcpp_components/16.0.6-1.tar.gz";
    name = "16.0.6-1.tar.gz";
    sha256 = "b2772d9c0307102525e2b4769a8619b364746c676c4d7afecc40d8bc1563d1f3";
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
