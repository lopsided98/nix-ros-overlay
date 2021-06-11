
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, controller-interface, controller-manager-msgs, hardware-interface, launch, launch-ros, pluginlib, rclcpp, rcpputils, ros2param, ros2run }:
buildRosPackage {
  pname = "ros-foxy-controller-manager";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/controller_manager/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "60d92f98db5a109764056b92e79ba0a095c4ff249b79fb9bd2aee2ef2bbb0529";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp controller-interface controller-manager-msgs hardware-interface launch launch-ros pluginlib rclcpp rcpputils ros2param ros2run ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Description of controller_manager'';
    license = with lib.licenses; [ asl20 ];
  };
}
