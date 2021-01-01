
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, class-loader, controller-interface, hardware-interface, rclcpp, rcpputils, test-robot-hardware }:
buildRosPackage {
  pname = "ros-dashing-controller-manager";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/dashing/controller_manager/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "2aa8ff5581906136442c8e24c08ac643bb5023f413522947df93b77fe4ef3ea0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common test-robot-hardware ];
  propagatedBuildInputs = [ ament-index-cpp class-loader controller-interface hardware-interface rclcpp rcpputils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Description of controller_manager'';
    license = with lib.licenses; [ asl20 ];
  };
}
