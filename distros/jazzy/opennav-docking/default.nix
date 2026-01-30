
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, angles, builtin-interfaces, geometry-msgs, nav-msgs, nav2-graceful-controller, nav2-msgs, nav2-util, opennav-docking-core, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, sensor-msgs, tf2-ros, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-opennav-docking";
  version = "1.3.11-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/opennav_docking/1.3.11-1.tar.gz";
    name = "1.3.11-1.tar.gz";
    sha256 = "dbc7a32339a8235b753b668f79f987a1b51b223170de4b13e24edb537cb7f359";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles builtin-interfaces geometry-msgs nav-msgs nav2-graceful-controller nav2-msgs nav2-util opennav-docking-core pluginlib rclcpp rclcpp-action rclcpp-lifecycle sensor-msgs tf2-ros yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A Task Server for robot charger docking";
    license = with lib.licenses; [ asl20 ];
  };
}
