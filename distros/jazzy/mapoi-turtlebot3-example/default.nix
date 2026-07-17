
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-pytest, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, mapoi-interfaces, mapoi-rviz-plugins, mapoi-server, mapoi-webui, nav2-msgs, python3Packages, rclcpp, rclcpp-action, ros-gz-sim, std-msgs, std-srvs, tf2, tf2-geometry-msgs, turtlebot3, turtlebot3-gazebo, turtlebot3-navigation2, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-mapoi-turtlebot3-example";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/shimz-robotics/mapoi-release/archive/release/jazzy/mapoi_turtlebot3_example/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "ba924ec08ee570ae83c5bbd4fa3c4398fbeb5e3d757619fd79db2e2a06cb369a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.pyyaml ];
  propagatedBuildInputs = [ ament-cmake-auto ament-index-cpp geometry-msgs mapoi-interfaces mapoi-rviz-plugins mapoi-server mapoi-webui nav2-msgs rclcpp rclcpp-action ros-gz-sim std-msgs std-srvs tf2 tf2-geometry-msgs turtlebot3 turtlebot3-gazebo turtlebot3-navigation2 yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TurtleBot3 simulation example for mapoi with sample maps and client nodes";
    license = with lib.licenses; [ mit ];
  };
}
