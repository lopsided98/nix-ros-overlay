
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, cli11, cmake, cv-bridge, mrpt-containers, mrpt-libros-bridge, mrpt-maps, mrpt-msgs, nav-msgs, rosbag2-cpp, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-rosbag2rawlog";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros_bridge-release/archive/release/kilted/rosbag2rawlog/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "e04661298112ff0890145535a0f6162eec5f96137edc5349acd50b62b287dcfa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake cmake ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto cli11 cv-bridge mrpt-containers mrpt-libros-bridge mrpt-maps mrpt-msgs nav-msgs rosbag2-cpp sensor-msgs tf2-geometry-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake cmake ];

  meta = {
    description = "CLI tool to transform between rosbags and rawlogs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
