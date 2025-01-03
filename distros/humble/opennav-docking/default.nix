
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, angles, builtin-interfaces, geometry-msgs, nav-msgs, nav2-graceful-controller, nav2-msgs, nav2-util, opennav-docking-core, opennav-docking-msgs, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, sensor-msgs, tf2-ros, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-opennav-docking";
  version = "0.0.2-r4";

  src = fetchurl {
    url = "https://github.com/open-navigation/opennav_docking-release/archive/release/humble/opennav_docking/0.0.2-4.tar.gz";
    name = "0.0.2-4.tar.gz";
    sha256 = "a7a13e8dd1671790ed984e0c6a788bf426c048e1e0615078d2fba9ad7589d690";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles builtin-interfaces geometry-msgs nav-msgs nav2-graceful-controller nav2-msgs nav2-util opennav-docking-core opennav-docking-msgs pluginlib rclcpp rclcpp-action rclcpp-lifecycle sensor-msgs tf2-ros yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A Task Server for robot charger docking";
    license = with lib.licenses; [ asl20 ];
  };
}
