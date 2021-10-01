
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, controller-interface, controller-manager-msgs, hardware-interface, launch, launch-ros, pluginlib, rclcpp, rcpputils, ros2-control-test-assets, ros2param, ros2run }:
buildRosPackage {
  pname = "ros-galactic-controller-manager";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/galactic/controller_manager/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "3eaf8a278b08cc982ea42b14a66adcacd02c4735497d3bf0245012a55d6d9dae";
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
