
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, mola-kernel, mrpt-libobs, mrpt-libros-bridge, rosbag2-cpp, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-mola-input-rosbag2";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_rosbag2/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "c38e9ce845a2b352700f48230c216c52813b0acabeeb426134785c914169f2a7";
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
