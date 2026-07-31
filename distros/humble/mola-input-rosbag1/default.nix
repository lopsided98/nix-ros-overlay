
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bzip2, cmake, geometry-msgs, lz4, mola-common, mola-kernel, mrpt-libmaps, mrpt-libobs, opencv, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mola-input-rosbag1";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_input_rosbag1-release/archive/release/humble/mola_input_rosbag1/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "931b03d82eba46906bf6c2bf3e1f817350e4e8df0e511c2d97ec1a7c987424b1";
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
