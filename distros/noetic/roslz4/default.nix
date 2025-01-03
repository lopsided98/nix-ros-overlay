
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, lz4, rosunit }:
buildRosPackage {
  pname = "ros-noetic-roslz4";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/roslz4/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "fbbb0722f57ba306be759bbc0c1741589b36462699cf504ecbb6c1360662b1e9";
  };

  buildType = "catkin";
  buildInputs = [ catkin cpp-common ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ lz4 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A Python and C++ implementation of the LZ4 streaming format.  Large data
    streams are split into blocks which are compressed using the very fast LZ4
    compression algorithm.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
