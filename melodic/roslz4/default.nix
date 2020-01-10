
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lz4, rosunit }:
buildRosPackage {
  pname = "ros-melodic-roslz4";
  version = "1.14.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/roslz4/1.14.3-0.tar.gz";
    name = "1.14.3-0.tar.gz";
    sha256 = "f1cfdca5119fb941e00a174dbd2ad42a577543994efd979e81fd22970ffc7a0e";
  };

  buildType = "catkin";
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
