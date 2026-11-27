
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, glfw3, libGL, libGLU, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-storage-mcap }:
buildRosPackage {
  pname = "ros-humble-rosbag-timing-inspector";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag_timing_inspector-release/archive/release/humble/rosbag_timing_inspector/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "912f0406ccce9448731685a4614985de9753d77dd813786254b6cc6ee614fc5c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake glfw3 libGL libGLU ];
  propagatedBuildInputs = [ rosbag2-cpp rosbag2-storage rosbag2-storage-default-plugins rosbag2-storage-mcap ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "GUI tool to visualize and analyze message timing from ROS2 bags (mcap or db3).";
    license = with lib.licenses; [ mit ];
  };
}
