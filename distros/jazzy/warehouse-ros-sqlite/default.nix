
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, class-loader, geometry-msgs, rclcpp, sqlite, sqlite3-vendor, warehouse-ros }:
buildRosPackage {
  pname = "ros-jazzy-warehouse-ros-sqlite";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/warehouse_ros_sqlite-release/archive/release/jazzy/warehouse_ros_sqlite/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "d3113c354eaf60ed5fb6fea2c2ba3a8988687838c47ab3e494de3d6258bad798";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake boost sqlite3-vendor ];
  checkInputs = [ ament-cmake-copyright ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs ];
  propagatedBuildInputs = [ class-loader rclcpp sqlite warehouse-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Implementation of warehouse_ros for sqlite";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
