
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, qt5, rclcpp, sensor-msgs, std-msgs, std-srvs, tmux, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-dispatcher";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dispatcher-release/archive/release/jazzy/dispatcher/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "aef20ed05a5b7a542c9c53d73a97a3a26c4390dfe64368ba73e5143a38ccd6bc";
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
