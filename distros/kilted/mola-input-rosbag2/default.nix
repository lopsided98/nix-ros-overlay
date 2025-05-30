
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, mola-kernel, mrpt-libobs, mrpt-libros-bridge, rosbag2-cpp, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-mola-input-rosbag2";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_input_rosbag2/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "d0b55087da9cbd1b91b13cc35ad43d70114489917b433447f3be80af6f952285";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ cv-bridge mola-kernel mrpt-libobs mrpt-libros-bridge rosbag2-cpp sensor-msgs tf2-geometry-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from rosbag2 datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
