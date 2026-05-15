
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, cli11, cmake, cv-bridge, mrpt-libmaps, mrpt-libros-bridge, mrpt-msgs, nav-msgs, rosbag2-cpp, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2rawlog";
  version = "3.5.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros_bridge-release/archive/release/jazzy/rosbag2rawlog/3.5.3-2.tar.gz";
    name = "3.5.3-2.tar.gz";
    sha256 = "d30c76d1ba52dc03f5fa5f7a4f4d6930c0608f9b1b0e71fd6e45ede23165d8fd";
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
