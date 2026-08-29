
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-cmake, cli11, cmake, mola-bridge-ros2, mola-common, mola-imu-preintegration, mola-input-kitti-dataset, mola-input-kitti360-dataset, mola-input-mulran-dataset, mola-input-paris-luco-dataset, mola-input-rawlog, mola-input-rosbag2, mola-kernel, mola-launcher, mola-metric-maps, mola-pose-list, mola-state-estimation-simple, mola-state-estimation-smoother, mola-test-datasets, mola-viz, mola-viz-imgui, mola-yaml, mp2p-icp, mrpt-libmaps, ros-environment, rosbag2-storage-mcap }:
buildRosPackage {
  pname = "ros-kilted-mola-lidar-odometry";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_lidar_odometry-release/archive/release/kilted/mola_lidar_odometry/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "4009c5c4df24f7395e1448addc4a8e8571819f3463216c21ae6ce5a1d067a892";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-cmake mola-metric-maps mola-test-datasets rosbag2-storage-mcap ];
  propagatedBuildInputs = [ cli11 mola-bridge-ros2 mola-common mola-imu-preintegration mola-input-kitti-dataset mola-input-kitti360-dataset mola-input-mulran-dataset mola-input-paris-luco-dataset mola-input-rawlog mola-input-rosbag2 mola-kernel mola-launcher mola-pose-list mola-state-estimation-simple mola-state-estimation-smoother mola-viz mola-viz-imgui mola-yaml mp2p-icp mrpt-libmaps ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "LIDAR odometry system based on MOLA and MRPT components";
    license = with lib.licenses; [ gpl3Only ];
  };
}
