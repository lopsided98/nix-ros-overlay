
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, controller-interface, controller-manager-msgs, hardware-interface, pluginlib, rclcpp, rcpputils }:
buildRosPackage {
  pname = "ros-foxy-controller-manager";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/controller_manager/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "8e47d3e5320e4adf8be2d46c03bb7e933bfe5dba295cf7a0ec113d181d239791";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp controller-interface controller-manager-msgs hardware-interface pluginlib rclcpp rcpputils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Description of controller_manager'';
    license = with lib.licenses; [ asl20 ];
  };
}
