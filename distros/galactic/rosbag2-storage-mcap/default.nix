
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-index-cpp, ament-lint-auto, ament-lint-common, pluginlib, python3Packages, rcutils, ros-environment, rosbag2-storage }:
buildRosPackage {
  pname = "ros-galactic-rosbag2-storage-mcap";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_storage_mcap-release/archive/release/galactic/rosbag2_storage_mcap/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "add936e76c297124bdc1dab1f588ecc16c0d5ae3c6eb95083afc9e221faabe5f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp pluginlib rcutils ros-environment rosbag2-storage ];
  nativeBuildInputs = [ ament-cmake python3Packages.pip ];

  meta = {
    description = ''rosbag2 storage plugin using the MCAP file format'';
    license = with lib.licenses; [ asl20 ];
  };
}
