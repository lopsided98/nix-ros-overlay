
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, qt5, rclcpp, sensor-msgs, std-msgs, std-srvs, tmux, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-dispatcher";
  version = "0.4.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dispatcher-release/archive/release/rolling/dispatcher/0.4.4-2.tar.gz";
    name = "0.4.4-2.tar.gz";
    sha256 = "253947bd8c9f33f499e86857e5c22a6e96f41532fb6bab3e5e4abd96c1cd7ced";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces qt5.qtbase rclcpp sensor-msgs std-msgs std-srvs tmux yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt-based ROS 2 application for launching and monitoring
    ROS nodes and arbitrary processes.";
    license = with lib.licenses; [ asl20 ];
  };
}
