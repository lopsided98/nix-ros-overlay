
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-google-benchmark, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, class-loader, composition-interfaces, launch-testing, rclcpp, rcpputils, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-rclcpp-components";
  version = "9.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/galactic/rclcpp_components/9.2.1-1.tar.gz";
    name = "9.2.1-1.tar.gz";
    sha256 = "03f71d1524155aa00d937fbdb891edf86ec397340222281023bea9b9805b88d3";
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
