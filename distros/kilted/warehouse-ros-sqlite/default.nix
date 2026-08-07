
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, class-loader, geometry-msgs, rclcpp, sqlite, warehouse-ros }:
buildRosPackage {
  pname = "ros-kilted-warehouse-ros-sqlite";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/warehouse_ros_sqlite-release/archive/release/kilted/warehouse_ros_sqlite/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "eada2865504e87fac8f152cb911ffd7f1c072850e14d83ee928211a64edf45c4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake boost ];
  checkInputs = [ ament-cmake-copyright ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs ];
  propagatedBuildInputs = [ class-loader rclcpp sqlite warehouse-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Implementation of warehouse_ros for sqlite";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
