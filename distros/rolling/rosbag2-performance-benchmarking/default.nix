
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rmw, rosbag2-compression, rosbag2-cpp, rosbag2-performance-benchmarking-msgs, rosbag2-storage, sensor-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-performance-benchmarking";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_performance_benchmarking/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "72da21456b86d792826205a56bbb5cb8722051d6102992ab4bb4be44b22b39cb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rmw rosbag2-compression rosbag2-cpp rosbag2-performance-benchmarking-msgs rosbag2-storage sensor-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Code to benchmark rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
