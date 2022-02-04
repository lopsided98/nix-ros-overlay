
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-google-benchmark, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, class-loader, composition-interfaces, launch-testing, rclcpp, rcpputils, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-rclcpp-components";
  version = "2.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/foxy/rclcpp_components/2.4.1-1.tar.gz";
    name = "2.4.1-1.tar.gz";
    sha256 = "e0aa605d1ab620af52e8a4e6cda53c1782e4e9a0ac47d03048095f270daa17eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcpputils ];
  checkInputs = [ ament-cmake-google-benchmark ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing std-msgs ];
  propagatedBuildInputs = [ ament-index-cpp class-loader composition-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing tools for dynamically loadable components'';
    license = with lib.licenses; [ asl20 ];
  };
}
