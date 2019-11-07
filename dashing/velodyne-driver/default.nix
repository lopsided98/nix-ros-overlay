
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, geometry-msgs, ament-cmake-gtest, rclcpp, ament-lint-auto, autoware-auto-cmake, lidar-utils }:
buildRosPackage {
  pname = "ros-dashing-velodyne-driver";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/velodyne_driver/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "72c4a0bc002c95fe8a5a277eae25dd06374c57952f1cb83fe5349730a1d595b9";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp lidar-utils geometry-msgs ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ rclcpp lidar-utils geometry-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''(Mostly) static memory implementation of a velodyne driver in one process'';
    license = with lib.licenses; [ asl20 ];
  };
}
