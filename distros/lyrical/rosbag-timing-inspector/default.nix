
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, glfw3, libGL, libGLU, rosbag2-cpp, rosbag2-storage }:
buildRosPackage {
  pname = "ros-lyrical-rosbag-timing-inspector";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag_timing_inspector-release/archive/release/lyrical/rosbag_timing_inspector/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "05d18e9de8ea7646c2fea2164862c951124a7ff00a8670ea2012858781568fee";
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
