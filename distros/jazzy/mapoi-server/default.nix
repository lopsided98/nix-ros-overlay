
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-cmake-pytest, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, launch-testing, launch-testing-ament-cmake, launch-testing-ros, mapoi-interfaces, nav2-msgs, rclcpp, rclcpp-action, ros-gz-bridge, ros-gz-interfaces, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-mapoi-server";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/shimz-robotics/mapoi-release/archive/release/jazzy/mapoi_server/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "9c4500b44251b2cf7938587c7e3d075364ba1472cff95e7942540beb054aa9b1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ ament-cmake-auto ament-index-cpp geometry-msgs mapoi-interfaces nav2-msgs rclcpp rclcpp-action ros-gz-bridge ros-gz-interfaces std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros visualization-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "map and poi server";
    license = with lib.licenses; [ mit ];
  };
}
