
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-ros, python3Packages, rclcpp, rmw, ros-testing, ros2bag, ros2launch, rosbag2-compression, rosbag2-cpp, rosbag2-performance-benchmarking-msgs, rosbag2-py, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, sensor-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-rosbag2-performance-benchmarking";
  version = "0.32.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/kilted/rosbag2_performance_benchmarking/0.32.0-2.tar.gz";
    name = "0.32.0-2.tar.gz";
    sha256 = "0f52fb51444d89e943e9e336f1c0b0408d6b98e0a971c5e4b1c3993bb91ff60a";
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
