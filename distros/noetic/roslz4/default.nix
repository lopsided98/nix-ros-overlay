
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, lz4, rosunit }:
buildRosPackage {
  pname = "ros-noetic-roslz4";
  version = "1.15.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/roslz4/1.15.6-1.tar.gz";
    name = "1.15.6-1.tar.gz";
    sha256 = "d2f700006232a663a1add55254dd7c8c909552f18188891335e15cae9ce74676";
  };

  buildType = "catkin";
  buildInputs = [ cpp-common ];
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
