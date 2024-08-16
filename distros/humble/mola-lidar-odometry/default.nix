
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-cmake, cmake, mola-common, mola-input-kitti-dataset, mola-input-kitti360-dataset, mola-input-mulran-dataset, mola-input-paris-luco-dataset, mola-input-rawlog, mola-input-rosbag2, mola-kernel, mola-metric-maps, mola-navstate-fuse, mola-pose-list, mola-test-datasets, mp2p-icp, mrpt2, ros-environment, rosbag2-storage-mcap }:
buildRosPackage {
  pname = "ros-humble-mola-lidar-odometry";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_lidar_odometry-release/archive/release/humble/mola_lidar_odometry/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "770586e6b5b363e75173c4e891c979db1d00b493db509117733144e11c078757";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-cmake mola-metric-maps mola-test-datasets rosbag2-storage-mcap ];
  propagatedBuildInputs = [ mola-common mola-input-kitti-dataset mola-input-kitti360-dataset mola-input-mulran-dataset mola-input-paris-luco-dataset mola-input-rawlog mola-input-rosbag2 mola-kernel mola-navstate-fuse mola-pose-list mp2p-icp mrpt2 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "LIDAR odometry system based on MOLA and MRPT components";
    license = with lib.licenses; [ gpl3Only ];
  };
}
