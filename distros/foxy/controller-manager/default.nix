
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, controller-interface, controller-manager-msgs, hardware-interface, pluginlib, rclcpp, rcpputils }:
buildRosPackage {
  pname = "ros-foxy-controller-manager";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/controller_manager/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "e57ce131218a3d95df32205f418c4e7d8c49381cff62647c432d41723407dc81";
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
