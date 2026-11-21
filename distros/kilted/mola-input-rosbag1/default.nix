
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bzip2, cli11, cmake, geometry-msgs, lz4, mola-common, mola-kernel, mrpt-maps, mrpt-obs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-mola-input-rosbag1";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_input_rosbag1-release/archive/release/kilted/mola_input_rosbag1/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "028617ed7310be2d8205d0f78e62403591d3f703ea0fbf666de7c15529bdc6c2";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost bzip2 cli11 geometry-msgs lz4 mola-common mola-kernel mrpt-maps mrpt-obs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "MOLA DataSource from ROS1 bag files that does not need a ROS1 installation";
    license = with lib.licenses; [ bsd3 ];
  };
}
