
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, controller-interface, controller-manager-msgs, hardware-interface, launch, launch-ros, pluginlib, rclcpp, rcpputils, ros2-control-test-assets, ros2param, ros2run }:
buildRosPackage {
  pname = "ros-foxy-controller-manager";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/controller_manager/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "ce30b80b22a9c7ae38545ab826c51cb6e0d9aff52c5498005c0ea72fdac32127";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp controller-interface controller-manager-msgs hardware-interface launch launch-ros pluginlib rclcpp rcpputils ros2-control-test-assets ros2param ros2run ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Description of controller_manager'';
    license = with lib.licenses; [ asl20 ];
  };
}
