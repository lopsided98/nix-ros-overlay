
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rmw, rosbag2-compression, rosbag2-cpp, rosbag2-storage, std-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-rosbag2-performance-benchmarking";
  version = "0.15.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/rosbag2_performance_benchmarking/0.15.9-1.tar.gz";
    name = "0.15.9-1.tar.gz";
    sha256 = "f76bdaa0dfa655485f4e4611f830ed4ed48e2676ff28aebd3219adf7349b0662";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rmw rosbag2-compression rosbag2-cpp rosbag2-storage std-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Code to benchmark rosbag2";
    license = with lib.licenses; [ asl20 ];
  };
}
