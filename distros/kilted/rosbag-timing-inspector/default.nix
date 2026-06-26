
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, glfw3, libGL, libGLU, rosbag2-cpp, rosbag2-storage }:
buildRosPackage {
  pname = "ros-kilted-rosbag-timing-inspector";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag_timing_inspector-release/archive/release/kilted/rosbag_timing_inspector/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "3afd896f1d3beb1dc09314a2f13c4261653f6152747f2b9e603fa58fa12cc418";
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
