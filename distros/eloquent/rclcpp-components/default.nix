
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, class-loader, composition-interfaces, launch-testing, rclcpp, rcpputils, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-rclcpp-components";
  version = "0.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/eloquent/rclcpp_components/0.8.5-1.tar.gz";
    name = "0.8.5-1.tar.gz";
    sha256 = "82a296f8465d90ec34aa4801753d8be3c183598cfa9a0473c895eef9230a9f54";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcpputils ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing std-msgs ];
  propagatedBuildInputs = [ ament-index-cpp class-loader composition-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing tools for dynamically loadable components'';
    license = with lib.licenses; [ asl20 ];
  };
}
