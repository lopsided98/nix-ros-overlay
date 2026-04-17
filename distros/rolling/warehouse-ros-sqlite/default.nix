
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_sqlite3_vendor, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, class-loader, geometry-msgs, rclcpp, warehouse-ros }:
buildRosPackage {
  pname = "ros-rolling-warehouse-ros-sqlite";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/warehouse_ros_sqlite-release/archive/release/rolling/warehouse_ros_sqlite/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "3de3e4e56187d447368c57a76d2ff48a407e601af5f3b0e01c931bc253b2cda0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake boost ];
  checkInputs = [ ament-cmake-copyright ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs ];
  propagatedBuildInputs = [ _unresolved_sqlite3_vendor class-loader rclcpp warehouse-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Implementation of warehouse_ros for sqlite";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
