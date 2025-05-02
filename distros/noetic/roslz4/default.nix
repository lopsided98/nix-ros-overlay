
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, lz4, rosunit }:
buildRosPackage {
  pname = "ros-noetic-roslz4";
  version = "1.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/roslz4/1.17.1-1.tar.gz";
    name = "1.17.1-1.tar.gz";
    sha256 = "bf947db7f96e2c91cb008e2e2e6c5e197011b6d16812b839d9aa6c4412567da0";
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
