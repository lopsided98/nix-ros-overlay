
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-msgs, plansys2-problem-expert, qt-gui-cpp, qt5, rclcpp, rclcpp-lifecycle, rqt-gui, rqt-gui-cpp }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-tools";
  version = "2.0.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_tools/2.0.14-1.tar.gz";
    name = "2.0.14-1.tar.gz";
    sha256 = "ec05f4f2dca26f5867a48681868c0cb9eeabc99d85b09fae1c5181965c98a642";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ plansys2-msgs plansys2-problem-expert qt-gui-cpp rclcpp rclcpp-lifecycle rqt-gui rqt-gui-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A set of tools for monitoring ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
