
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-cmake, cli11, cmake, eigen, launch-testing-ament-cmake, launch-testing-ros, mola-bridge-ros2, mola-common, mola-imu-preintegration, mola-input-kitti-dataset, mola-input-kitti360-dataset, mola-input-mulran-dataset, mola-input-paris-luco-dataset, mola-input-rawlog, mola-input-rosbag1, mola-input-rosbag2, mola-kernel, mola-launcher, mola-metric-maps, mola-pose-list, mola-relocalization, mola-state-estimation-simple, mola-state-estimation-smoother, mola-test-datasets, mola-viz, mola-viz-imgui, mola-yaml, mp2p-icp, mrpt-maps, mrpt-obs, nav-msgs, onetbb, rclpy, ros-environment, ros2bag, rosbag2-storage-mcap, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-mola-lidar-odometry";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_lidar_odometry-release/archive/release/humble/mola_lidar_odometry/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "8a6eee958e7e450a05637a6665e3619e0f2224f1c31dde740cd72760f20c93dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake eigen ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-cmake launch-testing-ament-cmake launch-testing-ros mola-launcher mola-metric-maps mola-test-datasets mrpt-obs nav-msgs rclpy ros2bag rosbag2-storage-mcap sensor-msgs ];
  propagatedBuildInputs = [ cli11 mola-bridge-ros2 mola-common mola-imu-preintegration mola-input-kitti-dataset mola-input-kitti360-dataset mola-input-mulran-dataset mola-input-paris-luco-dataset mola-input-rawlog mola-input-rosbag1 mola-input-rosbag2 mola-kernel mola-launcher mola-metric-maps mola-pose-list mola-relocalization mola-state-estimation-simple mola-state-estimation-smoother mola-viz mola-viz-imgui mola-yaml mp2p-icp mrpt-maps onetbb ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "LIDAR odometry system based on MOLA and MRPT components";
    license = with lib.licenses; [ gpl3Only ];
  };
}
