
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-industrial-deprecated";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/industrial_deprecated/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "32ee44d4411020c706eb55523f8dffb857ec94615f83d78c44fc90d8310a9d87";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Industrial deprecated package contains nodes, launch files, etc... that are slated for 
  deprecation.  This package is the last place something will end up before being deleted.  
  If you are missing a package/node and find it's contents here, then you should consider 
  a replacement.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
