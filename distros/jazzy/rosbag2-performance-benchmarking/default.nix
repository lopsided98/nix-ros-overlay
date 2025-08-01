
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-ros, python3Packages, rclcpp, rmw, ros-testing, ros2bag, ros2launch, rosbag2-compression, rosbag2-cpp, rosbag2-performance-benchmarking-msgs, rosbag2-py, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, sensor-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-performance-benchmarking";
  version = "0.26.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_performance_benchmarking/0.26.8-1.tar.gz";
    name = "0.26.8-1.tar.gz";
    sha256 = "14b8820beba82bb77bd19ea852a8ea47b6027795997cc625be9fd315a62a17ab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-ros ros-testing ros2bag ros2launch rosbag2-storage-default-plugins rosbag2-test-common ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros python3Packages.psutil rclcpp rmw rosbag2-compression rosbag2-cpp rosbag2-performance-benchmarking-msgs rosbag2-py rosbag2-storage sensor-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Code to benchmark rosbag2";
    license = with lib.licenses; [ asl20 ];
  };
}
