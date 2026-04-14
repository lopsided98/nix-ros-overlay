
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, gps-msgs, mola-kernel, mrpt-libobs, mrpt-libros-bridge, rosbag2-cpp, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-rosbag2";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_rosbag2/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "c6922531d17250ae1ae60d311c4d4f2b4c8d0ccfab1a67275309128bfc25d9d6";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ cv-bridge gps-msgs mola-kernel mrpt-libobs mrpt-libros-bridge rosbag2-cpp sensor-msgs tf2-geometry-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from rosbag2 datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
