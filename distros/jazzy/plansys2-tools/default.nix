
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-msgs, plansys2-pddl-parser, plansys2-problem-expert, pluginlib, qt-gui-cpp, qt5, rclcpp, rclcpp-lifecycle, rqt-gui, rqt-gui-cpp }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-tools";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_tools/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "c9fdf85238bfa6f8ab97d5b1a097cdac1c35ca48fea169eb6caf233bedd6dc03";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ plansys2-msgs plansys2-pddl-parser plansys2-problem-expert pluginlib qt-gui-cpp rclcpp rclcpp-lifecycle rqt-gui rqt-gui-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A set of tools for monitoring ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
