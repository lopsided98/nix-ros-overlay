
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, glfw3, libGL, libGLU, rosbag2-cpp, rosbag2-storage }:
buildRosPackage {
  pname = "ros-rolling-rosbag-timing-inspector";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag_timing_inspector-release/archive/release/rolling/rosbag_timing_inspector/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "ce7d50a9778c93acb375d4bd1d87c7e2da736f4bdb86a65bcf9917ec265c2565";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake glfw3 libGL libGLU ];
  propagatedBuildInputs = [ rosbag2-cpp rosbag2-storage ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "GUI tool to visualize and analyze message timing from ROS2 bags (mcap or db3).";
    license = with lib.licenses; [ mit ];
  };
}
