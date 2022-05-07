
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-index-cpp, ament-lint-auto, ament-lint-common, mcap-vendor, pluginlib, rcutils, rosbag2-storage }:
buildRosPackage {
  pname = "ros-foxy-rosbag2-storage-mcap";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_storage_mcap-release/archive/release/foxy/rosbag2_storage_mcap/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "709d83331da130c452606c4293bbbd02bc424da8d644dbb09e783fae96398bda";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp mcap-vendor pluginlib rcutils rosbag2-storage ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rosbag2 storage plugin using the MCAP file format'';
    license = with lib.licenses; [ asl20 ];
  };
}
