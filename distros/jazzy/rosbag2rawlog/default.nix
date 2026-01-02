
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, cli11, cmake, cv-bridge, mrpt-libmaps, mrpt-libros-bridge, mrpt-msgs, nav-msgs, rosbag2-cpp, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2rawlog";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros_bridge-release/archive/release/jazzy/rosbag2rawlog/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "1506b7425832ba03702a0bf99b0b032571929d47bc7c60787fe0a60229e8cef3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake cmake ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto cli11 cv-bridge mrpt-libmaps mrpt-libros-bridge mrpt-msgs nav-msgs rosbag2-cpp sensor-msgs tf2-geometry-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake cmake ];

  meta = {
    description = "CLI tool to transform between rosbags and rawlogs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
