
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, glfw3, libGL, libGLU, rosbag2-cpp, rosbag2-storage }:
buildRosPackage {
  pname = "ros-jazzy-rosbag-timing-inspector";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag_timing_inspector-release/archive/release/jazzy/rosbag_timing_inspector/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "db51490591ac7508e44b73395cbf7db569ab152e50bf23837568c154bab5637d";
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
