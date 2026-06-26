
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, glfw3, libGL, libGLU, rosbag2-cpp, rosbag2-storage }:
buildRosPackage {
  pname = "ros-humble-rosbag-timing-inspector";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag_timing_inspector-release/archive/release/humble/rosbag_timing_inspector/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "2396dcc96e0740afba40f4d3acd3f02f1942de404ceacfc81d893a11f75411e5";
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
