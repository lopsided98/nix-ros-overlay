
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-cmake, cli11, cmake, eigen, mola-bridge-ros2, mola-common, mola-imu-preintegration, mola-input-kitti-dataset, mola-input-kitti360-dataset, mola-input-mulran-dataset, mola-input-paris-luco-dataset, mola-input-rawlog, mola-input-rosbag1, mola-input-rosbag2, mola-kernel, mola-launcher, mola-metric-maps, mola-pose-list, mola-state-estimation-simple, mola-state-estimation-smoother, mola-test-datasets, mola-viz, mola-viz-imgui, mola-yaml, mp2p-icp, mrpt-maps, mrpt-obs, ros-environment, rosbag2-storage-mcap }:
buildRosPackage {
  pname = "ros-lyrical-mola-lidar-odometry";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_lidar_odometry-release/archive/release/lyrical/mola_lidar_odometry/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "eb31d0861e5e8e8ca301f32bc51cd78107dea64dd77fbd20446a6ebbd2d6cc17";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake eigen ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-cmake mola-metric-maps mola-test-datasets mrpt-obs rosbag2-storage-mcap ];
  propagatedBuildInputs = [ cli11 mola-bridge-ros2 mola-common mola-imu-preintegration mola-input-kitti-dataset mola-input-kitti360-dataset mola-input-mulran-dataset mola-input-paris-luco-dataset mola-input-rawlog mola-input-rosbag1 mola-input-rosbag2 mola-kernel mola-launcher mola-pose-list mola-state-estimation-simple mola-state-estimation-smoother mola-viz mola-viz-imgui mola-yaml mp2p-icp mrpt-maps ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "LIDAR odometry system based on MOLA and MRPT components";
    license = with lib.licenses; [ gpl3Only ];
  };
}
