
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, lz4, python3, rosunit }:
buildRosPackage {
  pname = "ros-noetic-roslz4";
  version = "1.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/roslz4/1.17.3-1.tar.gz";
    name = "1.17.3-1.tar.gz";
    sha256 = "8bcc35a3ee3989ab8a8268cd6b47c3223b74973c722eb1517252a6f8e55d7350";
  };

  buildType = "catkin";
  buildInputs = [ catkin cpp-common ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ lz4 python3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A Python and C++ implementation of the LZ4 streaming format.  Large data
    streams are split into blocks which are compressed using the very fast LZ4
    compression algorithm.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
