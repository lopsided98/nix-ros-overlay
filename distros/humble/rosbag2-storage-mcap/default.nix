
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, mcap-vendor, pluginlib, rcpputils, rcutils, rosbag2-storage, rosbag2-storage-mcap-testdata, rosbag2-test-common, std-msgs }:
buildRosPackage {
  pname = "ros-humble-rosbag2-storage-mcap";
  version = "0.15.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/rosbag2_storage_mcap/0.15.13-1.tar.gz";
    name = "0.15.13-1.tar.gz";
    sha256 = "79fba85fd39572239bcacf8285060d843e0cffe9085f2b6f05334f140195bc2f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-lint-auto ament-lint-common rcpputils rosbag2-storage-mcap-testdata rosbag2-test-common std-msgs ];
  propagatedBuildInputs = [ ament-index-cpp mcap-vendor pluginlib rcutils rosbag2-storage ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "rosbag2 storage plugin using the MCAP file format";
    license = with lib.licenses; [ asl20 ];
  };
}
