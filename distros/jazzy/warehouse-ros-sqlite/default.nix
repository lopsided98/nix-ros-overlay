
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, class-loader, geometry-msgs, rclcpp, sqlite3-vendor, warehouse-ros }:
buildRosPackage {
  pname = "ros-jazzy-warehouse-ros-sqlite";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/warehouse_ros_sqlite-release/archive/release/jazzy/warehouse_ros_sqlite/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "d7fe29e8f986d1dd7d9d27aa850eb98a2046797e725e8af3bd21a1ea3a9a1e69";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake boost ];
  checkInputs = [ ament-cmake-copyright ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs ];
  propagatedBuildInputs = [ class-loader rclcpp sqlite3-vendor warehouse-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Implementation of warehouse_ros for sqlite";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
