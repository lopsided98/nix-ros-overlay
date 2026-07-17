
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-pytest, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, mapoi-interfaces, mapoi-rviz-plugins, mapoi-server, mapoi-webui, nav2-msgs, python3Packages, rclcpp, rclcpp-action, std-msgs, std-srvs, tf2, tf2-geometry-msgs, turtlebot3, turtlebot3-gazebo, turtlebot3-navigation2, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-mapoi-turtlebot3-example";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/shimz-robotics/mapoi-release/archive/release/humble/mapoi_turtlebot3_example/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "2fba3c77b18e7c32897ad5d4e7f051e6fa13cfa457f460558bec8ee62a83012f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.pyyaml ];
  propagatedBuildInputs = [ ament-cmake-auto ament-index-cpp geometry-msgs mapoi-interfaces mapoi-rviz-plugins mapoi-server mapoi-webui nav2-msgs rclcpp rclcpp-action std-msgs std-srvs tf2 tf2-geometry-msgs turtlebot3 turtlebot3-gazebo turtlebot3-navigation2 yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TurtleBot3 simulation example for mapoi with sample maps and client nodes";
    license = with lib.licenses; [ mit ];
  };
}
