
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, lz4, rosunit }:
buildRosPackage {
  pname = "ros-noetic-roslz4";
  version = "1.15.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/roslz4/1.15.14-1.tar.gz";
    name = "1.15.14-1.tar.gz";
    sha256 = "fc7930aa414d62d8f7ccebe90b4d2b0d82407ec8ebcfdc313a1f4aba56e80cdc";
  };

  buildType = "catkin";
  buildInputs = [ catkin cpp-common ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ lz4 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python and C++ implementation of the LZ4 streaming format.  Large data
    streams are split into blocks which are compressed using the very fast LZ4
    compression algorithm.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
