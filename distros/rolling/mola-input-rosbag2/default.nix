
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, cv-bridge, gps-msgs, mola-kernel, mrpt-libros-bridge, mrpt-obs, rclcpp, rosbag2-cpp, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-mola-input-rosbag2";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_rosbag2/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "fd6b2c6b490290a377b98648e71aa710dc4194cd19a4e842be7f47a03266854b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ cli11 cv-bridge gps-msgs mola-kernel mrpt-libros-bridge mrpt-obs rclcpp rosbag2-cpp sensor-msgs tf2-geometry-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from rosbag2 datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
