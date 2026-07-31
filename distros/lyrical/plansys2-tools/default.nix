
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-msgs, plansys2-problem-expert, qt-gui-cpp, qt5, rclcpp, rclcpp-lifecycle, rqt-gui, rqt-gui-cpp }:
buildRosPackage {
  pname = "ros-lyrical-plansys2-tools";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/lyrical/plansys2_tools/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "ecedf546e3a6af28624b0bff828a44c01b5e1dbcaee6a1cf7b4d2476d5f23492";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ plansys2-msgs plansys2-problem-expert qt-gui-cpp qt5.qtbase rclcpp rclcpp-lifecycle rqt-gui rqt-gui-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A set of tools for monitoring ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
