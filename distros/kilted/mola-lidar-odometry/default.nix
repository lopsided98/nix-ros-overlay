
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-cmake, cli11, cmake, mola-common, mola-imu-preintegration, mola-input-kitti-dataset, mola-input-kitti360-dataset, mola-input-mulran-dataset, mola-input-paris-luco-dataset, mola-input-rawlog, mola-input-rosbag2, mola-kernel, mola-launcher, mola-metric-maps, mola-pose-list, mola-state-estimation-simple, mola-test-datasets, mola-viz, mola-yaml, mp2p-icp, mrpt-libmaps, ros-environment, rosbag2-storage-mcap }:
buildRosPackage {
  pname = "ros-kilted-mola-lidar-odometry";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_lidar_odometry-release/archive/release/kilted/mola_lidar_odometry/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "e33b1a0cd498bb043ff2c5f609dc89272c6fcef89eba0fd39c69a10f0ce9b15d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-cmake mola-metric-maps mola-test-datasets rosbag2-storage-mcap ];
  propagatedBuildInputs = [ cli11 mola-common mola-imu-preintegration mola-input-kitti-dataset mola-input-kitti360-dataset mola-input-mulran-dataset mola-input-paris-luco-dataset mola-input-rawlog mola-input-rosbag2 mola-kernel mola-launcher mola-pose-list mola-state-estimation-simple mola-viz mola-yaml mp2p-icp mrpt-libmaps ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "LIDAR odometry system based on MOLA and MRPT components";
    license = with lib.licenses; [ gpl3Only ];
  };
}
