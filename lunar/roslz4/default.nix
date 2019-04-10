
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lz4, catkin, rosunit }:
buildRosPackage {
  pname = "ros-lunar-roslz4";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/roslz4/1.13.7-0.tar.gz;
    sha256 = "92051cadbd771a7b1b7136b84104aeeee5967f409f0311c765e1bc667eefa2d1";
  };

  buildInputs = [ lz4 ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ lz4 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python and C++ implementation of the LZ4 streaming format.  Large data
    streams are split into blocks which are compressed using the very fast LZ4
    compression algorithm.'';
    #license = lib.licenses.BSD;
  };
}
