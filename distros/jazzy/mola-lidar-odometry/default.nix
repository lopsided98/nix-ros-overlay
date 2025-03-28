
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-cmake, cmake, mola-common, mola-input-kitti-dataset, mola-input-kitti360-dataset, mola-input-mulran-dataset, mola-input-paris-luco-dataset, mola-input-rawlog, mola-input-rosbag2, mola-kernel, mola-launcher, mola-metric-maps, mola-pose-list, mola-state-estimation-simple, mola-test-datasets, mola-viz, mp2p-icp, mrpt-libmaps, mrpt-libtclap, ros-environment, rosbag2-storage-mcap }:
buildRosPackage {
  pname = "ros-jazzy-mola-lidar-odometry";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_lidar_odometry-release/archive/release/jazzy/mola_lidar_odometry/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "0f5948b62ac42a2843f70eacaf8c8e031c24a0d4c27d824708f4c8bb166beec6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-cmake mola-metric-maps mola-test-datasets rosbag2-storage-mcap ];
  propagatedBuildInputs = [ mola-common mola-input-kitti-dataset mola-input-kitti360-dataset mola-input-mulran-dataset mola-input-paris-luco-dataset mola-input-rawlog mola-input-rosbag2 mola-kernel mola-launcher mola-pose-list mola-state-estimation-simple mola-viz mp2p-icp mrpt-libmaps mrpt-libtclap ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "LIDAR odometry system based on MOLA and MRPT components";
    license = with lib.licenses; [ gpl3Only ];
  };
}
