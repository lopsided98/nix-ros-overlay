
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, lidar-utils, ament-lint-common, ament-cmake, autoware-auto-cmake, ament-cmake-gtest, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-velodyne-driver";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/velodyne_driver/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "72c4a0bc002c95fe8a5a277eae25dd06374c57952f1cb83fe5349730a1d595b9";
  };

  buildType = "ament_cmake";
  buildInputs = [ lidar-utils rclcpp geometry-msgs ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ lidar-utils rclcpp geometry-msgs ];
  nativeBuildInputs = [ autoware-auto-cmake ament-cmake ];

  meta = {
    description = ''(Mostly) static memory implementation of a velodyne driver in one process'';
    license = with lib.licenses; [ asl20 ];
  };
}
