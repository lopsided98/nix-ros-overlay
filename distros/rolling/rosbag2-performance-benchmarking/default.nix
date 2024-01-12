
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-ros, python3Packages, rclcpp, rmw, ros-testing, ros2bag, ros2launch, rosbag2-compression, rosbag2-cpp, rosbag2-performance-benchmarking-msgs, rosbag2-py, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, sensor-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-performance-benchmarking";
  version = "0.24.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_performance_benchmarking/0.24.0-1.tar.gz";
    name = "0.24.0-1.tar.gz";
    sha256 = "1f841bb4710a4cbe43d0dbc9f722252263a8a945782345cf77a3a61d064255f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-ros ros-testing ros2bag ros2launch rosbag2-storage-default-plugins rosbag2-test-common ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros python3Packages.psutil rclcpp rmw rosbag2-compression rosbag2-cpp rosbag2-performance-benchmarking-msgs rosbag2-py rosbag2-storage sensor-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Code to benchmark rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
