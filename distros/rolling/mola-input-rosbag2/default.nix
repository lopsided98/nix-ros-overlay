
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, gps-msgs, mola-kernel, mrpt-libobs, mrpt-libros-bridge, rosbag2-cpp, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-mola-input-rosbag2";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_rosbag2/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "cba0f3600d6fb4b571aec193db5322290d25900f5d50d66359c741e518122eaf";
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
