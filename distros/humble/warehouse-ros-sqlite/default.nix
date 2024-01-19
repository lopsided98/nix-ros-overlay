
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, class-loader, geometry-msgs, rclcpp, sqlite, sqlite3-vendor, warehouse-ros }:
buildRosPackage {
  pname = "ros-humble-warehouse-ros-sqlite";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/warehouse_ros_sqlite-release/archive/release/humble/warehouse_ros_sqlite/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "3ab3f10028d9b9f61bec18ca63e3dba6d828e0476488773291b6d34f67517b4c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake boost sqlite3-vendor ];
  checkInputs = [ ament-cmake-copyright ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs ];
  propagatedBuildInputs = [ class-loader rclcpp sqlite warehouse-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Implementation of warehouse_ros for sqlite'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
