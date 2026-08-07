
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, class-loader, geometry-msgs, rclcpp, sqlite, warehouse-ros }:
buildRosPackage {
  pname = "ros-rolling-warehouse-ros-sqlite";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/warehouse_ros_sqlite-release/archive/release/rolling/warehouse_ros_sqlite/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "227f03ac62d1a70831ee0608019b5e8b09b901cc62bf6eb0d280f6970222e27f";
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
