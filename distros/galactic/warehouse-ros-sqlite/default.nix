
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, class-loader, geometry-msgs, rclcpp, sqlite, sqlite3-vendor, warehouse-ros }:
buildRosPackage {
  pname = "ros-galactic-warehouse-ros-sqlite";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/moveit/warehouse_ros_sqlite-release/archive/release/galactic/warehouse_ros_sqlite/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "a346d4881cbfa8a11aa6662eb7104239848c4087ab03088b99805725e4dd9540";
  };

  buildType = "ament_cmake";
  buildInputs = [ boost sqlite3-vendor ];
  checkInputs = [ ament-cmake-copyright ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs ];
  propagatedBuildInputs = [ class-loader rclcpp sqlite warehouse-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Implementation of warehouse_ros for sqlite'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
