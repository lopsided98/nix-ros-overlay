
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bzip2, cmake, geometry-msgs, lz4, mola-common, mola-kernel, mrpt-libmaps, mrpt-libobs, opencv, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-mola-input-rosbag1";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_input_rosbag1-release/archive/release/kilted/mola_input_rosbag1/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "3d0340876b33e4807ee4ad4e46881f863813650aa20889616b00aee7e3f6310e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost bzip2 geometry-msgs lz4 mola-common mola-kernel mrpt-libmaps mrpt-libobs opencv opencv.cxxdev tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "MOLA DataSource from ROS1 bag files that does not need a ROS1 installation";
    license = with lib.licenses; [ bsd3 ];
  };
}
