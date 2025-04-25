
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-google-benchmark, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, class-loader, composition-interfaces, launch-testing, rclcpp, rcpputils, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rclcpp-components";
  version = "28.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/jazzy/rclcpp_components/28.1.9-1.tar.gz";
    name = "28.1.9-1.tar.gz";
    sha256 = "f0e3f1fde6257ea2021c1c3de01e326c964a46b7415caae4a2fe09e10f24254f";
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
