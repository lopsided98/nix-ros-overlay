
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, controller-interface, controller-manager-msgs, hardware-interface, pluginlib, rclcpp, rcpputils }:
buildRosPackage {
  pname = "ros-foxy-controller-manager";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/bmagyar/ros2_control-release/archive/release/foxy/controller_manager/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "35fb0e77eabf8031e40fa0cb4e853aedacedbd9d214a96bfe7116e7d1b58c819";
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
