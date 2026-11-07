
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-msgs, plansys2-pddl-parser, plansys2-problem-expert, pluginlib, qt-gui-cpp, qt5, rclcpp, rclcpp-lifecycle, rqt-gui, rqt-gui-cpp }:
buildRosPackage {
  pname = "ros-humble-plansys2-tools";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/humble/plansys2_tools/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "8928f257da41602fc3f00aef1fffca8ddb296c3636ebf74fcda0e9191cb6bed6";
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
