
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-ros, python3Packages, rclcpp, rmw, ros-testing, ros2bag, ros2launch, rosbag2-compression, rosbag2-cpp, rosbag2-performance-benchmarking-msgs, rosbag2-py, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-performance-benchmarking";
  version = "0.35.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_performance_benchmarking/0.35.0-1.tar.gz";
    name = "0.35.0-1.tar.gz";
    sha256 = "e8d8bf17e17b3d1907269dc9fd15b9a812c903cc732ab241f0a3db1196d54dee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-ros ros-testing ros2bag ros2launch rosbag2-storage-default-plugins rosbag2-test-common ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros python3Packages.psutil rclcpp rmw rosbag2-compression rosbag2-cpp rosbag2-performance-benchmarking-msgs rosbag2-py rosbag2-storage sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Code to benchmark rosbag2";
    license = with lib.licenses; [ asl20 ];
  };
}
