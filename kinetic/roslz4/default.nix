
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lz4, catkin, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-roslz4";
  version = "1.12.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/roslz4/1.12.14-0.tar.gz;
    sha256 = "275d8be015ab3c017feacca99172fe35d55dd49b7aebc346402b4e5cf7157448";
  };

  buildInputs = [ lz4 ];
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
