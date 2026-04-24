
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, gps-msgs, mola-kernel, mrpt-libobs, mrpt-libros-bridge, rosbag2-cpp, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mola-input-rosbag2";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_input_rosbag2/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "20f68ed658ee535be84c9b13b7d209494e6c14e99ae25e5d914face6754200fb";
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
