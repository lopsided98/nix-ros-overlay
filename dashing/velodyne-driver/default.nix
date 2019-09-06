
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-pclint, ament-cmake-gtest, rclcpp, autoware-auto-cmake, lidar-utils }:
buildRosPackage {
  pname = "ros-dashing-velodyne-driver";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/velodyne_driver/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "a161f93214a688c7dab4513a14fd17f11f271acb3c8951d4438438ddd17a418d";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp lidar-utils ];
  checkInputs = [ ament-cmake-gtest ament-lint-common ament-cmake-pclint ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''(Mostly) static memory implementation of a velodyne driver in one process'';
    license = with lib.licenses; [ asl20 ];
  };
}
