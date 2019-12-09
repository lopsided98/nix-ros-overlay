
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, composition-interfaces, ament-cmake-ros, launch-testing, std-msgs, ament-lint-common, ament-lint-auto, rcpputils, class-loader, ament-index-cpp, rclcpp, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-rclcpp-components";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/dashing/rclcpp_components/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "0070b66875b9ab3fbc1bcdc5121c5fdafcc26a5c7b281ba0b779540799e113aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ composition-interfaces rcpputils class-loader ament-index-cpp rclcpp ];
  checkInputs = [ launch-testing std-msgs ament-lint-common ament-lint-auto ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp rclcpp composition-interfaces class-loader ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing tools for dynamically loadable components'';
    license = with lib.licenses; [ asl20 ];
  };
}
