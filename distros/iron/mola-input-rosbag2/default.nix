
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, mola-kernel, mrpt2, rosbag2-cpp, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-mola-input-rosbag2";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_input_rosbag2/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "c111f74ab79bbba9cb72ae1a9d16499362bb2bb3686b41785f21fb08a9e3fe81";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ cv-bridge mola-kernel mrpt2 rosbag2-cpp sensor-msgs tf2-geometry-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Offline RawDataSource from rosbag2 datasets'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
